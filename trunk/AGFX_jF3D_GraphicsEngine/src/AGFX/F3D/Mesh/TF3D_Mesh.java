/**
 * 
 */
package AGFX.F3D.Mesh;

import javax.vecmath.Vector2f;
import javax.vecmath.Vector3f;
import javax.vecmath.Vector4f;
import AGFX.F3D.F3D;
import AGFX.F3D.Parser.TF3D_PARSER;
import AGFX.F3D.Serialize.TF3D_Store;
import static org.lwjgl.opengl.GL13.*;

/**
 * @author AndyGFX
 * 
 */

public class TF3D_Mesh
{

	public TF3D_MeshData     data;
	public TF3D_VBO          vbo;
	public String            name = "noname";
	public TF3D_IndicesGroup IndicesGroup;

	// -----------------------------------------------------------------------
	// TF3D_Mesh:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Create Mesh VBO and Geom (data) container <BR>
	 * -------------------------------------------------------------------<BR>
	 */
	// -----------------------------------------------------------------------
	public TF3D_Mesh()
	{
		this.data = new TF3D_MeshData();
		this.IndicesGroup = new TF3D_IndicesGroup();
		this.name = "noname";
	}

	// -----------------------------------------------------------------------
	// TF3D_Mesh:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Load *.a3da file. <BR>
	 * - when exist BIN format of this file, is loaded first<BR>
	 * - when missing, then is loaded ASCI file format and automaticali <BR>
	 * converted to BINARY <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param filename
	 *            - mesha data filename [abstract::xxxxxxxxxxx.a3da]
	 * 
	 * 
	 */
	// -----------------------------------------------------------------------
	public void Load(String filename)
	{
		this.Load(filename, false);
	}

	public void Load(String filename, Boolean flip)
	{
		String o_fname = filename;

		if (F3D.Config.io_preload_source_mode.equals("PRELOAD_FROM_FOLDER"))
		{

			filename = filename.replace(".a3da", ".a3db");

			if (F3D.AbstractFiles.ExistFile(filename))
			{
				this.Load_A3DB(filename);
			} else
			{
				this.Load_A3DA(o_fname, flip);

				if (F3D.Config.io_mesh_asci_to_bin)
				{
					this.Save_A3DB(o_fname);
				}
			}
		}

		if (F3D.Config.io_preload_source_mode.equals("PRELOAD_FROM_JAR"))
		{

			if (F3D.AbstractFiles.ExistFile(filename))
			{
				this.Load_A3DA(filename);
			}
		}

		// create VBO buffers
		this.vbo = new TF3D_VBO();

		if (this.data.vertices.length > 0)
			this.vbo.CreateVertexBuffer(this.data.vertices);
		if (this.data.normals.length > 0)
			this.vbo.CreateNormalBuffer(this.data.normals);
		if (this.data.colors.length > 0)
			this.vbo.CreateColorBuffer(this.data.colors);
		if (this.data.uv0.length > 0)
			this.vbo.CreateTextureBuffer(this.data.uv0, GL_TEXTURE0);
		if (this.data.uv1.length > 0)
			this.vbo.CreateTextureBuffer(this.data.uv1, GL_TEXTURE1);
		if (this.data.uv2.length > 0)
			this.vbo.CreateTextureBuffer(this.data.uv2, GL_TEXTURE2);
		if (this.data.uv3.length > 0)
			this.vbo.CreateTextureBuffer(this.data.uv3, GL_TEXTURE3);
		if (this.data.indices.length > 0)
			this.vbo.CreateIndicesBuffer(this.data.indices);

		this.vbo.Build();

		this.IndicesGroup.Generate();

	}

	public void Load_A3DA(String filename)
	{
		this.Load_A3DA(filename, false);
	}

	// -----------------------------------------------------------------------
	// TA3D_Mesh:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Load mesh data from file <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param filename
	 *            filename of *.a3da
	 */
	// -----------------------------------------------------------------------
	public void Load_A3DA(String filename, Boolean flip)
	{
		TF3D_PARSER PARSER = new TF3D_PARSER();

		this.name = filename;
		PARSER.ParseFile(filename);

		String mat_name = "none";

		this.data.SetFacesCount((short) PARSER.GetBlocksCount());

		for (int i = 0; i < PARSER.GetBlocksCount(); i++)
		{
			PARSER.SetBlock(i);

			Vector3f vA = new Vector3f(0, 0, 0);
			Vector3f vB = new Vector3f(0, 0, 0);
			Vector3f vC = new Vector3f(0, 0, 0);

			Vector3f nA = new Vector3f(0, 0, 0);
			Vector3f nB = new Vector3f(0, 0, 0);
			Vector3f nC = new Vector3f(0, 0, 0);

			Vector4f cA = new Vector4f(0, 0, 0, 0);
			Vector4f cB = new Vector4f(0, 0, 0, 0);
			Vector4f cC = new Vector4f(0, 0, 0, 0);

			Vector2f uv0A = new Vector2f(0, 0);
			Vector2f uv0B = new Vector2f(0, 0);
			Vector2f uv0C = new Vector2f(0, 0);

			vA = PARSER.GetAs_VECTOR3F("vA");
			vB = PARSER.GetAs_VECTOR3F("vB");
			vC = PARSER.GetAs_VECTOR3F("vC");

			nA = PARSER.GetAs_VECTOR3F("nA");
			nB = PARSER.GetAs_VECTOR3F("nB");
			nC = PARSER.GetAs_VECTOR3F("nC");

			if (flip)
			{
				nA.scale(-1f);
				nB.scale(-1f);
				nC.scale(-1f);
			}

			cA = PARSER.GetAs_VECTOR4F("cA");
			cB = PARSER.GetAs_VECTOR4F("cB");
			cC = PARSER.GetAs_VECTOR4F("cC");

			uv0A = PARSER.GetAs_VECTOR2F("uv0A");
			uv0B = PARSER.GetAs_VECTOR2F("uv0B");
			uv0C = PARSER.GetAs_VECTOR2F("uv0C");

			mat_name = PARSER.GetAs_STRING("mat");
			this.data.material_id = F3D.Surfaces.FindByName(mat_name);

			if (flip)
			{
				this.data.AddVertex(vC);
				this.data.AddVertex(vB);
				this.data.AddVertex(vA);

				this.data.AddNormal(nC);
				this.data.AddNormal(nB);
				this.data.AddNormal(nA);

				this.data.AddColor(cC);
				this.data.AddColor(cB);
				this.data.AddColor(cA);

				this.data.AddUV(uv0C, 0);
				this.data.AddUV(uv0B, 0);
				this.data.AddUV(uv0A, 0);

				this.data.AddUV(uv0C, 1);
				this.data.AddUV(uv0B, 1);
				this.data.AddUV(uv0A, 1);
				
			} else
			{
				this.data.AddVertex(vA);
				this.data.AddVertex(vB);
				this.data.AddVertex(vC);

				this.data.AddNormal(nA);
				this.data.AddNormal(nB);
				this.data.AddNormal(nC);

				this.data.AddColor(cA);
				this.data.AddColor(cB);
				this.data.AddColor(cC);

				this.data.AddUV(uv0A, 0);
				this.data.AddUV(uv0B, 0);
				this.data.AddUV(uv0C, 0);

				this.data.AddUV(uv0A, 1);
				this.data.AddUV(uv0B, 1);
				this.data.AddUV(uv0C, 1);
			}

			this.data.AddFace(mat_name);
			this.IndicesGroup.AddIndexToGroup(mat_name, i);
		}

	}

	// -----------------------------------------------------------------------
	// TF3D_Mesh:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Save a3da file format to BIN <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param filename
	 *            - filename
	 */
	// -----------------------------------------------------------------------
	public void Save_A3DB(String filename)
	{
		String fname = F3D.AbstractFiles.GetFullPath(filename);

		fname = filename.replace("a3da", "a3db");
		fname = filename.replace("A3DA", "A3DB");

		TF3D_Store.saveObj(this.data, fname);

	}

	// -----------------------------------------------------------------------
	// TF3D_Mesh:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Load BIN format of a3da format <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param filename
	 *            - filename
	 */
	// -----------------------------------------------------------------------
	public void Load_A3DB(String filename)
	{
		this.name = filename.replace(".a3db", ".a3da");
		this.data = TF3D_Store.readObj(filename);

		this.IndicesGroup.AddIndexToGroup(this.data.faces_material);
	}

	public void Render()
	{
		this.vbo.Bind();
		this.vbo.DrawVertexBuffer(IndicesGroup.items.get(0).indexBuffer);
		this.vbo.UnBind();
	}

	// -----------------------------------------------------------------------
	// TF3D_Mesh:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Render mesh indices group <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param sid
	 *            - indices group ID
	 */
	// -----------------------------------------------------------------------
	public void Render(int sid)
	{

		this.vbo.DrawVertexBuffer(IndicesGroup.items.get(sid).indexBuffer);

	}

	/*
	 * void FindInvTBN(Vector3f Vertices[3], Vector2f TexCoords[3], Vector3f &
	 * InvNormal, Vector3f & InvBinormal, Vector3f & InvTangent) { //Calculate
	 * the vectors from the current vertex to the two other vertices in the
	 * triangle
	 * 
	 * Vector3f v2v1 = Vertices[0] - Vertices[2]; Vector3f v3v1 = Vertices[1] -
	 * Vertices[2];
	 * 
	 * //Calculate the “direction” of the triangle based on texture coordinates.
	 * 
	 * // Calculate c2c1_T and c2c1_B float c2c1_T = TexCoords[0].x() -
	 * TexCoords[2].x(); float c2c1_B = TexCoords[0].y() - TexCoords[2].y();
	 * 
	 * // Calculate c3c1_T and c3c1_B float c3c1_T = TexCoords[1].x() -
	 * TexCoords[2].x(); float c3c1_B = TexCoords[1].y() - TexCoords[2].y();
	 * 
	 * //Look at the references for more explanation for this one. float
	 * fDenominator = c2c1_T * c3c1_B - c3c1_T * c2c1_B; // ROUNDOFF here is a
	 * macro that sets a value to 0.0f if the value is a very small value, such
	 * as > -0.001f and < 0.001.
	 * 
	 * 
	 * if (ROUNDOFF(fDenominator) == 0.0f) { /* We won't risk a divide by zero,
	 * so set the tangent matrix to the identity matrix InvTangent =
	 * Vector3f(1.0f, 0.0f, 0.0f); InvBinormal = Vector3f(0.0f, 1.0f, 0.0f);
	 * InvNormal = Vector3f(0.0f, 0.0f, 1.0f); } else { // Calculate the
	 * reciprocal value once and for all (to achieve speed) float fScale1 = 1.0f
	 * / fDenominator;
	 * 
	 * /* Time to calculate the tangent, binormal, and normal. Look at Søren’s
	 * article for more information. Vector3f T, B, N; T = Vector3f((c3c1_B *
	 * v2v1.x() - c2c1_B * v3v1.x()) * fscale1, (c3c1_B * v2v1.y() - c2c1_B *
	 * v3v1.y()) * fScale1, (c3c1_B * v2v1.z() - c2c1_B * v3v1.z()) * fScale1);
	 * 
	 * B = Vector3f((-c3c1_T * v2v1.x() + c2c1_T * v3v1.x()) * fScale1, (-c3c1_T
	 * * v2v1.y() + c2c1_T * v3v1.y()) * fScale1, (-c3c1_T * v2v1.z() + c2c1_T *
	 * v3v1.z()) * fScale1);
	 * 
	 * N = T%B; //Cross product! //This is where programmers should break up the
	 * function to smooth the tangent, binormal and normal values.
	 * 
	 * //Look at “Derivation of the Tangent Space Matrix” for more information.
	 * 
	 * float fScale2 = 1.0f / ((T.x() * B.y() * N.z() - T.z() * B.y() * N.x()) +
	 * (B.x() * N.y() * T.z() - B.z() * N.y() * T.x()) + (N.x() * T.y() * B.z()
	 * - N.z() * T.y() * B.x())); InvTangent.set((B%N).x() * fScale2, ((-1.0f *
	 * N)%T).x() * fScale2, (T%B).x() * fScale2); InvTangent.normalize();
	 * 
	 * InvBinormal.set(((-1.0f *B)%N).y() * fScale2, (N%T).y() * fScale2,
	 * ((-1.0f * T)%B).y() * fScale2); InvBinormal.normalize();
	 * 
	 * InvNormal.set((B%N).z() * fScale2, ((-1.0f * N)%T).z() * fScale2,
	 * (T%B).z() * fScale2); InvNormal.normalize(); }
	 */

}

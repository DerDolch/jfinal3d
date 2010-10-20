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

	
	
	public TF3D_MeshData	data;
	public TF3D_VBO       vbo;
	public String		  name= "noname"; 

	
	
	// -----------------------------------------------------------------------
	// TF3D_Mesh: 
	// -----------------------------------------------------------------------
	/**
	 * <BR>-------------------------------------------------------------------<BR> 
	 *  Create Mesh VBO and Geom (data) container
	 * <BR>-------------------------------------------------------------------<BR> 
	 */
	// -----------------------------------------------------------------------
	public TF3D_Mesh()
	{
		this.data = new TF3D_MeshData();
		
		this.name = "noname";
	}
	
	
	// -----------------------------------------------------------------------
	// TF3D_Mesh: 
	// -----------------------------------------------------------------------
	/**
	 * <BR>-------------------------------------------------------------------<BR> 
	 *  Load *.a3da file. <BR>
	 *   - when exist BIN format of this file, is loaded first<BR>
	 *   - when missing, then is loaded ASCI file format and automaticali <BR>
	 *     converted to BINARY
	 * <BR>-------------------------------------------------------------------<BR> 
	 * @param filename - mesha data filename [abstract::xxxxxxxxxxx.a3da] 
	 * 	
	 * 
	 */
	// -----------------------------------------------------------------------
	public void Load(String filename)
	{
		String o_fname = filename;
		
		filename = filename.replace(".a3da", ".a3db");
		
		if (F3D.AbstractFiles.ExistFile(filename))
		{
			this.Load_A3DB(filename);
		}
		else
		{
			this.Load_A3DA(o_fname);
			if (F3D.Config.io_mesh_asci_to_bin) this.Save_A3DB(o_fname);
		}
		/*
		if (filename.contains(".a3da"))
		{
			this.Load_A3DA(filename);
		}
		
		if (filename.contains(".a3db"))
		{
			this.Load_A3DB(filename);
		}
		*/
		
		// create VBO buffers
		this.vbo = new TF3D_VBO();		
		if  (this.data.vertices.length>0) this.vbo.CreateVertexBuffer(this.data.vertices);
		if  (this.data.normals.length>0) this.vbo.CreateNormalBuffer(this.data.normals);
		if  (this.data.colors.length>0) this.vbo.CreateColorBuffer(this.data.colors);
		if  (this.data.uv0.length>0) this.vbo.CreateTextureBuffer(this.data.uv0, GL_TEXTURE0);
		if  (this.data.uv1.length>0) this.vbo.CreateTextureBuffer(this.data.uv1, GL_TEXTURE1);
		if  (this.data.uv2.length>0) this.vbo.CreateTextureBuffer(this.data.uv2, GL_TEXTURE2);
		if  (this.data.uv3.length>0) this.vbo.CreateTextureBuffer(this.data.uv3, GL_TEXTURE3);
		if  (this.data.indices.length>0) this.vbo.CreateIndicesBuffer(this.data.indices);
		this.vbo.Build();
	}
	
	// -----------------------------------------------------------------------
	// TA3D_Mesh: 
	// -----------------------------------------------------------------------
	/**
	 * <BR>-------------------------------------------------------------------<BR> 
	 * Load mesh data from file 
	 * <BR>-------------------------------------------------------------------<BR> 
	 * @param filename filename of *.a3da
	 */
	// -----------------------------------------------------------------------
	public void Load_A3DA(String filename)
	{
		TF3D_PARSER PARSER = new TF3D_PARSER();

		this.name = filename;
		PARSER.ParseFile(filename);
	
		String mat_name = "none";

		this.data.SetFacesCount(PARSER.GetBlocksCount());

		for (int i = 0; i < PARSER.GetBlocksCount(); i++)
		{
			PARSER.SetBlock(i);

			Vector3f vA = new Vector3f(0,0,0);
			Vector3f vB = new Vector3f(0,0,0);
			Vector3f vC = new Vector3f(0,0,0);

			Vector3f nA = new Vector3f(0,0,0);
			Vector3f nB = new Vector3f(0,0,0);
			Vector3f nC = new Vector3f(0,0,0);

			Vector4f cA = new Vector4f(0,0,0,0);
			Vector4f cB = new Vector4f(0,0,0,0);
			Vector4f cC = new Vector4f(0,0,0,0);

			Vector2f uv0A = new Vector2f(0,0);
			Vector2f uv0B = new Vector2f(0,0);
			Vector2f uv0C = new Vector2f(0,0);

			vA = PARSER.GetAs_VECTOR3F("vA");
			vB = PARSER.GetAs_VECTOR3F("vB");
			vC = PARSER.GetAs_VECTOR3F("vC");

			nA = PARSER.GetAs_VECTOR3F("nA");
			nB = PARSER.GetAs_VECTOR3F("nB");
			nC = PARSER.GetAs_VECTOR3F("nC");

			cA = PARSER.GetAs_VECTOR4F("cA");
			cB = PARSER.GetAs_VECTOR4F("cB");
			cC = PARSER.GetAs_VECTOR4F("cC");

			uv0A = PARSER.GetAs_VECTOR2F("uv0A");
			uv0B = PARSER.GetAs_VECTOR2F("uv0B");
			uv0C = PARSER.GetAs_VECTOR2F("uv0C");

			mat_name = PARSER.GetAs_STRING("mat");
			this.data.material_id = F3D.Surfaces.FindByName(mat_name);
			
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

			this.data.AddFace();
		}
		
	}


	public void Save_A3DB(String filename)
	{
		String fname = F3D.AbstractFiles.GetFullPath(filename);
		
		fname = filename.replace("a3da", "a3db");
		fname = filename.replace("A3DA", "A3DB");
		
		TF3D_Store.saveObj(this.data, fname);
		
	}
	public void Load_A3DB(String filename)
	{
		this.name = filename.replace(".a3db", ".a3da");
		this.data = TF3D_Store.readObj(filename);
		
	}

	

	// -----------------------------------------------------------------------
	// TA3D_Mesh: 
	// -----------------------------------------------------------------------
	/**
	 * <BR>-------------------------------------------------------------------<BR> 
	 *  Render Mesh
	 * <BR>-------------------------------------------------------------------<BR> 
	 */
	// -----------------------------------------------------------------------
	
	public void Render()
	{
			this.vbo.DrawVertexBuffer();
	}

}

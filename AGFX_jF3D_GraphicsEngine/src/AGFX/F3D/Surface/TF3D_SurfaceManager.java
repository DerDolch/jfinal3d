/**
 * 
 */
package AGFX.F3D.Surface;

import java.nio.FloatBuffer;
import java.util.ArrayList;

import org.lwjgl.BufferUtils;

import AGFX.F3D.F3D;
import AGFX.F3D.Material.TF3D_Material;
import AGFX.F3D.Parser.TF3D_PARSER;
import static org.lwjgl.opengl.GL11.*;

/**
 * @author AndyGFX
 * 
 */
public class TF3D_SurfaceManager
{

	public ArrayList<TF3D_Material> materials;
	float                           matDiffuse[] = new float[] { 1.0f, 0.0f,0.0f, 1.0f};
	public float                 WorldAmbient[] = new float[] { 0.3f, 0.3f,0.3f, 1.0f};

	// -----------------------------------------------------------------------
	// TA3D_SurfaceManager:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Constructor <BR>
	 * -------------------------------------------------------------------<BR>
	 */
	// -----------------------------------------------------------------------
	public TF3D_SurfaceManager()
	{
		F3D.Log.info("TF3D_SurfaceManager", "TA3D_SurfaceManager: constructor");
		this.materials = new ArrayList<TF3D_Material>();
		F3D.Log.info("TF3D_SurfaceManager", "TA3D_SurfaceManager: ... done");
	}

	// -----------------------------------------------------------------------
	// TA3D_SurfaceManager:
	// -----------------------------------------------------------------------
	/**
	 * -------------------------------------------------------------------<BR>
	 * Add Material to Array List <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param mat
	 *            - material
	 * @return ID from ArrayList
	 */
	// -----------------------------------------------------------------------
	public int Add(TF3D_Material mat)
	{
		if (this.Exist(mat.name))
		{
			F3D.Log.info("TF3D_SurfaceManager", "TA3D_SurfaceManager: Add() '" + mat.name + "' wasn't added - exist !");
			return this.FindByName(mat.name);	
			
		} else
		{
			int res = this.materials.size();
			this.materials.add(mat);
			F3D.Log.info("TF3D_SurfaceManager", "TA3D_SurfaceManager: Add() '" + mat.name + "'");
			return res;
		}
	}

	// -----------------------------------------------------------------------
	// TA3D_SurfaceManager:
	// -----------------------------------------------------------------------
	/**
	 * -------------------------------------------------------------------<BR>
	 * get Material ID from Surface manager <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param _name
	 *            material name
	 * @return ID
	 */
	// -----------------------------------------------------------------------
	public int FindByName(String _name)
	{
		int res = -1;

		for (int i = 0; i < this.materials.size(); i++)
		{
			if (this.materials.get(i).name.equalsIgnoreCase(_name))
			{
				res = i;
			}
		}

		return res;
	}

	// -----------------------------------------------------------------------
	// TA3D_SurfaceManager:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Apply surface <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param id
	 *            - surface ID
	 */
	// -----------------------------------------------------------------------
	public void ApplyMaterial(int id)
	{
		// is material type=0 (MAT_TEXTURE)
		if (this.materials.get(id).typ == 0)
		{

			if (this.materials.get(id).bAlphaTest)
			{
				glEnable(GL_ALPHA_TEST);
			} else
			{
				glDisable(GL_ALPHA_TEST);
			}

			if (this.materials.get(id).bDepthTest)
			{
				glEnable(GL_DEPTH_TEST);
			} else
			{
				glDisable(GL_DEPTH_TEST);
			}

			if (this.materials.get(id).bFaceCulling)
			{
				glEnable(GL_CULL_FACE);
			} else
			{
				glDisable(GL_CULL_FACE);
			}

			if (F3D.Config.use_gl_light)
			{
				FloatBuffer amb_buff = BufferUtils.createFloatBuffer(this.WorldAmbient.length);
				amb_buff.put(this.WorldAmbient).rewind();
				
				
				glMaterial(GL_FRONT_AND_BACK, GL_AMBIENT, amb_buff);
				this.materials.get(id).diffuse[0] = this.materials.get(id).color.x;
				this.materials.get(id).diffuse[1] = this.materials.get(id).color.y;
				this.materials.get(id).diffuse[2] = this.materials.get(id).color.z;
				this.materials.get(id).diffuse[3] = this.materials.get(id).color.w;
				
				FloatBuffer diff_buff = BufferUtils.createFloatBuffer(this.materials.get(id).diffuse.length);
				diff_buff.put(this.materials.get(id).diffuse).rewind();
				
				
				glMaterial(GL_FRONT_AND_BACK, GL_DIFFUSE, diff_buff);
			} else
			{
				glColor4f(this.materials.get(id).color.x, this.materials.get(id).color.y, this.materials.get(id).color.z, this.materials.get(id).color.w);
			}
			
			for (int u = 0; u < F3D.MAX_TMU; u++)
			{
				if (this.materials.get(id).texture_unit[u].bEvent)
				{
					F3D.MaterialEvents.Apply(u, this.materials.get(id).texture_unit[u].event_id);
				} else
				{
					F3D.MaterialEvents.ResetEvent(u);
				}

				if (this.materials.get(id).texture_unit[u].bTexture)
				{
					F3D.Textures.ActivateLayer(u);
					F3D.Textures.Bind(this.materials.get(id).texture_unit[u].texture_id);

				} else
				{
					F3D.Textures.DeactivateLayer(u);
				}

			}
			
		}
		
	}

	// -----------------------------------------------------------------------
	// TA3D_SurfaceManager:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Load Material definition from file <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param filename
	 *            filename of external material definition
	 */
	// -----------------------------------------------------------------------
	public void Load(String filename)
	{
		TF3D_PARSER PARSER = new TF3D_PARSER();
		TF3D_Material mat;
		int BLOCK_ID;
		String tmp_str;

		F3D.Log.info("TF3D_SurfaceManager", "Loading ... "+filename);
		Boolean Exist = F3D.AbstractFiles.ExistFile(filename);
		
		if (!Exist)
		{
			F3D.Log.error("TF3D_SurfaceManager", "Can't load file:" + filename);
		}
		
		PARSER.ParseFile(F3D.AbstractFiles.GetFullPath(filename));


		for (BLOCK_ID = 0; BLOCK_ID < PARSER.GetBlocksCount(); BLOCK_ID++)
		{
			PARSER.SetBlock(BLOCK_ID);
			mat = new TF3D_Material();

			// get type
			tmp_str = PARSER.GetAs_STRING("type");

			if (tmp_str.equalsIgnoreCase("MAT_TEXTURE"))
			{
				mat.typ = 0;
			}

			// get name
			mat.name = PARSER.GetAs_STRING("name");

			// get color
			mat.color = PARSER.GetAs_VECTOR4F("color");

			// get texture 0 .. 3
			mat.texture_unit[0].texture_name = PARSER.GetAs_STRING("texture_0");
			mat.texture_unit[1].texture_name = PARSER.GetAs_STRING("texture_1");
			mat.texture_unit[2].texture_name = PARSER.GetAs_STRING("texture_2");
			mat.texture_unit[3].texture_name = PARSER.GetAs_STRING("texture_3");

			// get event 0 .. 3
			mat.texture_unit[0].event_name = PARSER.GetAs_STRING("event_0");
			mat.texture_unit[1].event_name = PARSER.GetAs_STRING("event_1");
			mat.texture_unit[2].event_name = PARSER.GetAs_STRING("event_2");
			mat.texture_unit[3].event_name = PARSER.GetAs_STRING("event_3");

			// get depthtest
			mat.bDepthTest = PARSER.GetAs_BOOLEAN("depthtest");

			// get alphatest
			mat.bAlphaTest = PARSER.GetAs_BOOLEAN("alphatest");

			// get faceculling
			mat.bFaceCulling = PARSER.GetAs_BOOLEAN("faceculling");
			
			F3D.Log.warning("Culling", mat.name + " "+mat.bFaceCulling.toString());

			// prepare textures
			for (int t = 0; t < F3D.MAX_TMU; t++)
			{
				if (mat.texture_unit[t].texture_name.equals("none"))
				{
					mat.texture_unit[t].bTexture = false;
				} else
				{
					Boolean exist = F3D.Textures.Exist(mat.texture_unit[t].texture_name);

					if (exist)
					{
						mat.texture_unit[t].texture_id = F3D.Textures.FindByName(mat.texture_unit[t].texture_name);
						mat.texture_unit[t].bTexture = true;
					} else
					{
						F3D.Log.error("TF3D_SurfaceManager", "Texture name: '" + mat.texture_unit[t].texture_name + "' missing (texture you have to load first !)");
					}
				}

				if (mat.texture_unit[t].event_name.equalsIgnoreCase("none"))
				{
					mat.texture_unit[t].bEvent = false;
				} else
				{
					Boolean exist = F3D.MaterialEvents.Exist(mat.texture_unit[t].event_name);

					if (exist)
					{
						mat.texture_unit[t].event_id = F3D.MaterialEvents.FindByName(mat.texture_unit[t].event_name);
						mat.texture_unit[t].bEvent = true;
					} else
					{
						F3D.Log.error("TF3D_SurfaceManager", "Event name: '" + mat.texture_unit[t].event_name + "' missing (events you have to load first !)");
					}
				}

			}

			this.Add(mat);
		}

	}

	// -----------------------------------------------------------------------
	// TA3D_SurfaceManager:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * check if material exist in material list <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param name
	 *            texture name
	 * @return return true when texture exist in list
	 */
	// -----------------------------------------------------------------------
	public Boolean Exist(String name)
	{
		Boolean res = false;

		int f = this.FindByName(name);

		if (f == -1)
		{
			res = false;
		} else
		{
			res = true;
		}

		return res;
	}
	
	public void Destroy()
	{
		for(int m=0;m<this.materials.size();m++)
		{
			this.materials.remove(m);
		}
	}
}

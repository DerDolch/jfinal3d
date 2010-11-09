/**
 * 
 */
package AGFX.F3D.Shader;

import java.util.ArrayList;

import org.lwjgl.opengl.GL20;

import AGFX.F3D.F3D;
import AGFX.F3D.Callback.TF3D_ShaderCallback;

/**
 * @author AndyGFX
 * 
 */
public class TF3D_ShaderManager
{
	public ArrayList<TF3D_Shader> items;
	public TF3D_Shader            shader_diffuse;
	public TF3D_Shader            shader_phong;
	public TF3D_Shader            shader_envmap;
	public TF3D_Shader            shader_glow;
	public TF3D_Shader            shader_posterize;
	public TF3D_Shader            shader_dream;
	public TF3D_Shader            shader_warp;

	public TF3D_ShaderManager()
	{

		F3D.Log.info("TF3D_ShaderManager", "TF3D_ShaderManager: constructor");
		this.items = new ArrayList<TF3D_Shader>();
		F3D.Log.info("TF3D_ShaderManager", "TF3D_ShaderManager: ... done");
	}

	// -----------------------------------------------------------------------
	// TF3D_ShaderManager:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Add Shader to list <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param shd
	 *            - shader
	 * @return
	 */
	// -----------------------------------------------------------------------
	public int Add(TF3D_Shader shd)
	{
		if (this.Exist(shd.name))
		{
			F3D.Log.info("TF3D_ShaderManager", "TF3D_ShaderManager: Add() '" + shd.name + "' wasn't added - exist !");
			return this.FindByName(shd.name);

		} else
		{
			int res = this.items.size();
			this.items.add(shd);
			F3D.Log.info("TF3D_ShaderManager", "TF3D_ShaderManager: Add() '" + shd.name + "'");
			return res;
		}
	}

	// -----------------------------------------------------------------------
	// TF3D_ShaderManager:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Load and add shader to list <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param _name
	 *            - shader name
	 * @param vertexShaderFile
	 *            - vertex Shader File
	 * @param fragmentShaderFile
	 *            - fragment Shader File
	 * @return
	 */
	// -----------------------------------------------------------------------
	public int Add(String _name, String vertexShaderFile, String fragmentShaderFile)
	{
		if (this.Exist(_name))
		{
			F3D.Log.info("TF3D_ShaderManager", "TF3D_ShaderManager: Add() '" + _name + "' wasn't added - exist !");
			return this.FindByName(_name);

		} else
		{
			int res = this.items.size();
			TF3D_Shader shd = new TF3D_Shader(_name);
			shd.Load(vertexShaderFile, fragmentShaderFile);
			this.items.add(shd);
			F3D.Log.info("TF3D_ShaderManager", "TF3D_ShaderManager: Add() '" + shd.name + "'");
			return res;
		}
	}

	// -----------------------------------------------------------------------
	// TF3D_ShaderManager:
	// -----------------------------------------------------------------------
	/**
	 * -------------------------------------------------------------------<BR>
	 * get Shader ID from list <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param _name
	 *            shader name
	 * @return ID
	 */
	// -----------------------------------------------------------------------
	public int FindByName(String _name)
	{
		int res = -1;

		for (int i = 0; i < this.items.size(); i++)
		{
			if (this.items.get(i).name.equalsIgnoreCase(_name))
			{
				res = i;
			}
		}

		return res;
	}

	// -----------------------------------------------------------------------
	// TF3D_ShaderManager:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * check if shader exist in list <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param name
	 *            shader name
	 * @return return true when exist in list
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

	// -----------------------------------------------------------------------
	// TF3D_ShaderManager:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Get Shader from list by name <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param name
	 *            - name of shader
	 * @return
	 */
	// -----------------------------------------------------------------------
	public TF3D_Shader Get(String name)
	{
		return this.items.get(this.FindByName(name));
	}

	// -----------------------------------------------------------------------
	// TF3D_ShaderManager:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Get Shader from list by id <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param id
	 *            - ID from list
	 * @return
	 */
	// -----------------------------------------------------------------------
	public TF3D_Shader Get(int id)
	{
		return this.items.get(id);
	}

	// -----------------------------------------------------------------------
	// TF3D_ShaderManager:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Destroy TF3D_ShaderManager <BR>
	 * -------------------------------------------------------------------<BR>
	 */
	// -----------------------------------------------------------------------
	public void Destroy()
	{
		for (int m = 0; m < this.items.size(); m++)
		{
			this.items.remove(m);
		}
	}

	// -----------------------------------------------------------------------
	// TF3D_ShaderManager:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Execute shader by name <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param name
	 *            - shader name
	 */
	// -----------------------------------------------------------------------
	public void UseProgram(String name)
	{
		this.items.get(this.FindByName(name)).UseProgram();
	}

	// -----------------------------------------------------------------------
	// TF3D_ShaderManager:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Execute shader by ID <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param id
	 *            - ID from shader list
	 */
	// -----------------------------------------------------------------------
	public void UseProgram(int id)
	{
		this.items.get(id).UseProgram();
	}

	public void StopProgram(String name)
	{
		this.items.get(this.FindByName(name)).StopProgram();
	}

	public void StopProgram(int id)
	{
		this.items.get(id).StopProgram();
	}

	public void StopProgram()
	{
		GL20.glUseProgram(0);
	}

	public void InitPresets()
	{
		
		if ((F3D.Config.use_shaders) & (F3D.Extensions.GLSL_VertexShader) & (F3D.Extensions.GLSL_FragmenShader))
		{
			// Shader: DIFFUSE

			shader_diffuse = new TF3D_Shader("DIFFUSE");
			shader_diffuse.Load("abstract::f3d_diffuse.vert", "abstract::f3d_diffuse.frag");
			shader_diffuse.AddUniform1i("BaseMap", 0);
			this.Add(shader_diffuse);

			// Shader: PHONG

			shader_phong = new TF3D_Shader("PHONG");
			shader_phong.Load("abstract::f3d_phong.vert", "abstract::f3d_phong.frag");
			shader_phong.AddUniform1i("BaseMap", 0);
			shader_phong.AddUniform4f("fvSpecular", 0.7f, 0.7f, 0.7f, 1f);
			shader_phong.AddUniform4f("fvDiffuse", 0.7f, 0.7f, 0.7f, 1f);
			shader_phong.AddUniform4f("fvAmbient", 0.1f, 0.1f, 0.1f, 1f);
			shader_phong.AddUniform1f("fSpecularPower", 100f);
			shader_phong.AddUniform3f("fvLightPosition", -3f, 3f, 3f);
			shader_phong.AddUniform3f("fvEyePosition", 2f, 2f, 2f);

			this.Add(shader_phong);

			// Shader: ENVMAP

			shader_envmap = new TF3D_Shader("ENVMAP");
			shader_envmap.Load("abstract::f3d_envmap.vert", "abstract::f3d_envmap.frag");
			shader_envmap.AddUniform1i("BaseMap", 0);
			shader_envmap.AddUniform1i("EnvMap", 1);
			shader_envmap.AddUniform3f("BaseColor", 0.7f, 0.7f, 0.7f);
			shader_envmap.AddUniform1f("MixRatio", 0.8f);
			shader_envmap.AddUniform3f("LightPos", 13f, 13f, 13f);

			this.Add(shader_envmap);

			// Shader: GLOW

			shader_glow = new TF3D_Shader("GLOW");
			shader_glow.Load("abstract::f3d_glow.vert", "abstract::f3d_glow.frag");
			shader_glow.AddUniform1i("BaseMap", 0);
			shader_glow.AddUniform1i("GlowMap", 1);

			this.Add(shader_glow);
			
			
			// Shader: POSTERIZE
			
			shader_posterize = new TF3D_Shader("POSTERIZE");
			shader_posterize.Load("abstract::f3d_posterize.vert", "abstract::f3d_posterize.frag");
			shader_posterize.AddUniform1i("sceneTex", 0);
			shader_posterize.AddUniform1f("gamma", 0.6f);
			shader_posterize.AddUniform1f("numColors", 8.0f);
			this.Add(shader_posterize);
			
			// Shader: DREAM
			
			shader_dream = new TF3D_Shader("DREAM");
			shader_dream.Load("abstract::f3d_dream.vert", "abstract::f3d_dream.frag");
			shader_dream.AddUniform1i("sceneTex", 0);
			this.Add(shader_dream);
			
			
			// Shader: DREAM
			
			shader_warp = new TF3D_Shader("WARP");
			shader_warp.Load("abstract::f3d_warp.vert", "abstract::f3d_warp.frag");
			shader_warp.AddUniform1i("SceneMap", 0);
			shader_warp.AddUniform1i("NoiseMap", 1);
			shader_warp.AddUniform1f("Speed", 0.05f);
			shader_warp.AddUniformEvent("TIMER", F3D.SHADER_EVENT_TIMER);
			this.Add(shader_warp);
			
		}
	}
}
/**
 * 
 */
package AGFX.F3D.Shader;

import java.util.ArrayList;

import org.lwjgl.opengl.GL20;

import AGFX.F3D.F3D;


/**
 * @author AndyGFX
 *
 */
public class TF3D_ShaderManager
{
	public ArrayList<TF3D_Shader> items;

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
	 * <BR>-------------------------------------------------------------------<BR> 
	 *  Load and add shader to list
	 * <BR>-------------------------------------------------------------------<BR> 
	 * @param _name - shader name
	 * @param vertexShaderFile - vertex Shader File 
	 * @param fragmentShaderFile - fragment Shader File 
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
	 * <BR>-------------------------------------------------------------------<BR> 
	 *  Get Shader from list by name
	 * <BR>-------------------------------------------------------------------<BR> 
	 * @param name - name of shader
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
	 * <BR>-------------------------------------------------------------------<BR> 
	 *  Get Shader from list by id
	 * <BR>-------------------------------------------------------------------<BR> 
	 * @param id - ID from list
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
	 * <BR>-------------------------------------------------------------------<BR> 
	 *  Execute shader by name
	 * <BR>-------------------------------------------------------------------<BR> 
	 * @param name - shader name
	 */
	// -----------------------------------------------------------------------
	public void Bind(String name)
	{
		this.items.get(this.FindByName(name)).Bind();
	}
	
	// -----------------------------------------------------------------------
	// TF3D_ShaderManager: 
	// -----------------------------------------------------------------------
	/**
	 * <BR>-------------------------------------------------------------------<BR> 
	 *  Execute shader by ID
	 * <BR>-------------------------------------------------------------------<BR> 
	 * @param id - ID from shader list
	 */
	// -----------------------------------------------------------------------
	public void Bind(int id)
	{
		this.items.get(id).Bind();
	}
	
	public void UnBind()
	{
		GL20.glUseProgram(0);
	}
}

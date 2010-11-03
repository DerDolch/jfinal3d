/**
 * 
 */
package AGFX.F3D.Shader;

import java.util.ArrayList;

import org.lwjgl.opengl.GL20;


/**
 * @author AndyGFX
 * 
 */
public class TF3D_Shader
{
	public String								name;
	public int									id	= -1;
	public ArrayList<TF3D_ShaderUniformData>	Uniforms;

	// -----------------------------------------------------------------------
	// TF3D_Shader:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Create Shader <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param name
	 *            - user defiend shader name
	 */
	// -----------------------------------------------------------------------
	public TF3D_Shader(String name)
	{
		this.name = name;
		this.id = -1;
		this.Uniforms = new ArrayList<TF3D_ShaderUniformData>();
	}

	public void AddUniform1i(String var_name, int _i1)
	{
		TF3D_ShaderUniformData un = new TF3D_ShaderUniformData(var_name);
		int[] ii = new int[1];
		ii[0] = _i1;
		un.SetAsInteger(ii);
		this.Uniforms.add(un);
	}

	public void AddUniform2i(String var_name, int _i1, int _i2)
	{
		TF3D_ShaderUniformData un = new TF3D_ShaderUniformData(var_name);
		int[] ii = new int[2];
		ii[0] = _i1;
		ii[1] = _i2;
		un.SetAsInteger(ii);
		this.Uniforms.add(un);
	}

	public void AddUniform3i(String var_name, int _i1, int _i2, int _i3)
	{
		TF3D_ShaderUniformData un = new TF3D_ShaderUniformData(var_name);
		int[] ii = new int[3];
		ii[0] = _i1;
		ii[1] = _i2;
		ii[2] = _i3;
		un.SetAsInteger(ii);
		this.Uniforms.add(un);
	}
	
	public void AddUniform4i(String var_name, int _i1, int _i2, int _i3, int _i4)
	{
		TF3D_ShaderUniformData un = new TF3D_ShaderUniformData(var_name);
		int[] ii = new int[3];
		ii[0] = _i1;
		ii[1] = _i2;
		ii[2] = _i3;
		ii[3] = _i4;
		un.SetAsInteger(ii);
		this.Uniforms.add(un);
	}
	
	public void AddUniform1f(String var_name, float _f1)
	{
		TF3D_ShaderUniformData un = new TF3D_ShaderUniformData(var_name);
		float[] ff = new float[1];
		ff[0] = _f1;
		un.SetAsFloat(ff);
		this.Uniforms.add(un);
	}

	public void AddUniform2f(String var_name, float _f1,float _f2)
	{
		TF3D_ShaderUniformData un = new TF3D_ShaderUniformData(var_name);
		float[] ff = new float[2];
		ff[0] = _f1;
		ff[1] = _f2;
		un.SetAsFloat(ff);
		this.Uniforms.add(un);
	}
	
	public void AddUniform3f(String var_name, float _f1,float _f2,float _f3)
	{
		TF3D_ShaderUniformData un = new TF3D_ShaderUniformData(var_name);
		float[] ff = new float[3];
		ff[0] = _f1;
		ff[1] = _f2;
		ff[2] = _f3;
		un.SetAsFloat(ff);
		this.Uniforms.add(un);
	}
	
	public void AddUniform4f(String var_name, float _f1,float _f2,float _f3,float _f4)
	{
		TF3D_ShaderUniformData un = new TF3D_ShaderUniformData(var_name);
		float[] ff = new float[4];
		ff[0] = _f1;
		ff[1] = _f2;
		ff[2] = _f3;
		ff[3] = _f4;
		un.SetAsFloat(ff);
		this.Uniforms.add(un);
	}
	
	// -----------------------------------------------------------------------
	// TF3D_Shader:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Load vertex/fragmet shader file <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param vertexShaderFile
	 * @param fragmentShaderFile
	 */
	// -----------------------------------------------------------------------
	public void Load(String vertexShaderFile, String fragmentShaderFile)
	{

		this.id = TF3D_GLSL_Shader.loadShadersCode(vertexShaderFile, fragmentShaderFile);
	}

	// -----------------------------------------------------------------------
	// TF3D_Shader:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Execute GLSL priogram <BR>
	 * -------------------------------------------------------------------<BR>
	 */
	// -----------------------------------------------------------------------
	public void UseProgram()
	{
		GL20.glUseProgram(this.id);
		
		for (int i=0;i<this.Uniforms.size();i++)
		{
			this.Uniforms.get(i).Set(this.id);
		}
		
	}

	public void StopProgram()
	{
		GL20.glUseProgram(0);
	}
}

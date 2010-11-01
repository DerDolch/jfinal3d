/**
 * 
 */
package AGFX.F3D.Shader;

import org.lwjgl.opengl.GL20;

import AGFX.F3D.Callback.TF3D_ShaderCallback;

/**
 * @author AndyGFX
 *
 */
public  class TF3D_Shader
{
	public String name;
	public int id = -1;
	public TF3D_ShaderCallback SetUniforms;
	
	
	// -----------------------------------------------------------------------
	// TF3D_Shader: 
	// -----------------------------------------------------------------------
	/**
	 * <BR>-------------------------------------------------------------------<BR> 
	 *  Create Shader
	 * <BR>-------------------------------------------------------------------<BR> 
	 * @param name - user defiend shader name
	 */
	// -----------------------------------------------------------------------
	public TF3D_Shader(String name)
	{
		this.name = name;
		this.id = -1;
	}
	
	// -----------------------------------------------------------------------
	// TF3D_Shader: 
	// -----------------------------------------------------------------------
	/**
	 * <BR>-------------------------------------------------------------------<BR> 
	 *  Load vertex/fragmet shader file
	 * <BR>-------------------------------------------------------------------<BR> 
	 * @param vertexShaderFile
	 * @param fragmentShaderFile
	 */
	// -----------------------------------------------------------------------
	public void Load(String vertexShaderFile, String fragmentShaderFile)
	{
		
		this.id = TF3D_GLSL_Shader.loadShadersCode(vertexShaderFile,fragmentShaderFile);
	}
	
	
	// -----------------------------------------------------------------------
	// TF3D_Shader: 
	// -----------------------------------------------------------------------
	/**
	 * <BR>-------------------------------------------------------------------<BR> 
	 *  Execute GLSL priogram
	 * <BR>-------------------------------------------------------------------<BR> 
	 */
	// -----------------------------------------------------------------------
	public void UseProgram()
	{
		GL20.glUseProgram(this.id);
		if (this.SetUniforms!=null) this.SetUniforms.Call(this);
	}
	
	public void StopProgram()
	{
		GL20.glUseProgram(0);
	}
}

/**
 * 
 */
package AGFX.F3D.Shader;

import org.lwjgl.opengl.GL20;

/**
 * @author AndyGFX
 *
 */
public class TF3D_Shader
{
	public String name;
	public int id = -1;
	
	public TF3D_Shader(String name)
	{
		this.name = name;
		this.id = -1;
	}
	
	public void Load(String vertexShaderFile, String fragmentShaderFile)
	{
		
		this.id = TF3D_GLSL_Shader.loadShadersCode(vertexShaderFile,fragmentShaderFile);
	}
	
	public void Bind()
	{
		GL20.glUseProgram(this.id);
	}
	
	public void UnBind()
	{
		GL20.glUseProgram(0);
	}
}

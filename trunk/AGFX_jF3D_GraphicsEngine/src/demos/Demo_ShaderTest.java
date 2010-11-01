package demos;

import javax.vecmath.*;

import org.lwjgl.input.Keyboard;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL20;
import org.lwjgl.opengl.GL21;

import AGFX.F3D.F3D;
import AGFX.F3D.AppWrapper.TF3D_AppWrapper;
import AGFX.F3D.Callback.TF3D_ShaderCallback;
import AGFX.F3D.Camera.TF3D_Camera;
import AGFX.F3D.Light.TF3D_Light;
import AGFX.F3D.Model.TF3D_Model;
import AGFX.F3D.Parser.TF3D_PARSER;
import AGFX.F3D.Shader.TF3D_GLSL_Shader;
import AGFX.F3D.Shader.TF3D_Shader;
import AGFX.F3D.Texture.TF3D_Texture;

public class Demo_ShaderTest extends TF3D_AppWrapper
{

	public TF3D_Camera  Camera;
	public TF3D_Texture Tex;
	public float        angle           = 0;
	public TF3D_PARSER  PARSER;
	public TF3D_Model   model;
	public int          surface_id;
	public TF3D_Shader  shader_diffuse;
	public int          selected_shader = 1;

	public Demo_ShaderTest()

	{

	}

	@Override
	public void onConfigure()
	{
		try
		{

			// Redefine Config

			F3D.Config.r_display_width = 800;
			F3D.Config.r_display_height = 600;
			F3D.Config.r_fullscreen = false;
			F3D.Config.r_display_vsync = true;
			F3D.Config.r_display_title = "jFinal3D Graphics Engine 2010 - RENDER MODEL";

		} catch (Exception e)
		{
			e.printStackTrace();
		}
	}

	@Override
	public void onInitialize()
	{
		F3D.Worlds.CreateWorld("MAIN_WORLD");

		this.Camera = new TF3D_Camera("TargetCamera");
		this.Camera.SetPosition(2.0f, 2.0f, -2.0f);

		this.Camera.movespeed = 0.2f;
		this.Camera.TargetPoint = new Vector3f(0, 0, 0);
		this.Camera.ctype = F3D.CAMERA_TYPE_TARGET;

		F3D.Cameras.Add(this.Camera);
		F3D.Worlds.SetCamera(this.Camera);

		// Add light to scene
		TF3D_Light light = new TF3D_Light("light_0", 0);
		light.SetPosition(3, 3, 3);
		light.Enable();

		this.surface_id = F3D.Surfaces.FindByName("MAT_text_a");

		F3D.Meshes.Add("abstract::Sphere.a3da");
		F3D.Meshes.items.get(0).IndicesGroup.items.get(0).material_id = -1;

		// add method #1

		shader_diffuse = new TF3D_Shader("DIFFUSE");
		shader_diffuse.Load("media/shaders/f3d_diffuse.vert", "media/shaders/f3d_diffuse.frag");

		// create callback for fill UNIFORMs values to shader

		class SetDiffuseUniforms implements TF3D_ShaderCallback
		{
			@Override
			public void Call(TF3D_Shader shd)
			{
				TF3D_GLSL_Shader.sendUniform1i(shd.id, "BaseMap", 0);
				TF3D_GLSL_Shader.sendUniform4f(shd.id, "light_diffuse", 0.7f, 0.7f, 0.7f, 1f);
				TF3D_GLSL_Shader.sendUniform4f(shd.id, "light_ambient", 0.1f, 0.1f, 0.1f, 1f);
				TF3D_GLSL_Shader.sendUniform3f(shd.id, "light_position", 3f, 3f, 3f);

			}
		}

		shader_diffuse.SetUniforms = new SetDiffuseUniforms();
		
		F3D.Shaders.Add(shader_diffuse);

		// add method #2
		
		// create callback for fill UNIFORMs values to shader
		class SetPhongUniforms implements TF3D_ShaderCallback
		{
			@Override
			public void Call(TF3D_Shader shd)
			{
				TF3D_GLSL_Shader.sendUniform1i(shd.id, "BaseMap", 0);
				TF3D_GLSL_Shader.sendUniform4f(shd.id, "fvSpecular", 0.7f, 0.7f, 0.7f, 1f);
				TF3D_GLSL_Shader.sendUniform4f(shd.id, "fvDiffuse", 0.7f, 0.7f, 0.7f, 1f);
				TF3D_GLSL_Shader.sendUniform4f(shd.id, "fvAmbient", 0.1f, 0.1f, 0.1f, 1f);
				TF3D_GLSL_Shader.sendUniform1f(shd.id, "fSpecularPower", 50.0f);
				TF3D_GLSL_Shader.sendUniform3f(shd.id, "fvLightPosition", 3f, 3f, 3f);
				TF3D_GLSL_Shader.sendUniform3f(shd.id, "fvEyePosition", 2f, 2f, 2f);

			}
		}
		
		F3D.Shaders.Add("PHONG", "media/shaders/f3d_phong.vert", "media/shaders/f3d_phong.frag",new SetPhongUniforms());
	}

	@Override
	public void onUpdate3D()
	{

		F3D.Draw.Axis(2.0f);

		if (selected_shader == 1)
		{
			F3D.Shaders.UseProgram("DIFFUSE");
			F3D.Textures.ActivateLayer(0);
			F3D.Textures.Bind(6);

		}

		if (selected_shader == 2)
		{

			F3D.Shaders.UseProgram("PHONG");
			F3D.Textures.ActivateLayer(0);
			F3D.Textures.Bind(6);

		}

		if (Keyboard.isKeyDown(Keyboard.KEY_1))
		{
			selected_shader = 1;
			F3D.Log.info("MAIN", "shader_diffuse");
		}
		if (Keyboard.isKeyDown(Keyboard.KEY_2))
		{
			selected_shader = 2;
			F3D.Log.info("MAIN", "shader_phong");
		}

		F3D.Meshes.items.get(0).Render();

		
		F3D.Shaders.StopProgram();
	}

	@Override
	public void onUpdate2D()
	{

	}

	@Override
	public void OnDestroy()
	{

	}

	public static void main(String[] args)
	{
		new Demo_ShaderTest().Execute();
		System.exit(0);
	}

}

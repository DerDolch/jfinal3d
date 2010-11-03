package demos;

import javax.vecmath.*;

import org.lwjgl.input.Keyboard;
import org.lwjgl.input.Mouse;

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

public class Demo_AutomaticShaderTest extends TF3D_AppWrapper
{

	public TF3D_Camera	Camera;
	public TF3D_Texture	Tex;
	public TF3D_Model	model0;
	public TF3D_Model	model0a;
	public TF3D_Model	model0b;
	
	public TF3D_Model	model1;
	public TF3D_Model	model1a;
	public TF3D_Model	model1b;
	public TF3D_Model	model2;
	public TF3D_Model	model2a;
	public TF3D_Model	model2b;
	public TF3D_Model	model3;
	public TF3D_Model	model3a;
	public TF3D_Model	model3b;
	
	

	public Demo_AutomaticShaderTest()

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
			F3D.Config.r_display_title = "jFinal3D Graphics Engine 2010 - RENDER SHADER MODEL";

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
		this.Camera.SetPosition(0.0f, 2.0f, 2.0f);

		this.Camera.movespeed = 0.2f;
		this.Camera.TargetPoint = new Vector3f(0, 0, 0);
		this.Camera.ctype = F3D.CAMERA_TYPE_FPS;

		F3D.Cameras.Add(this.Camera);
		F3D.Worlds.SetCamera(this.Camera);

		// Add light to scene
		TF3D_Light light = new TF3D_Light("light_0", 0);
		light.SetPosition(3, 3, 3);
		light.Enable();

		// LOAD MESHES

		F3D.Meshes.Add("abstract::Sphere.a3da");
		F3D.Meshes.Add("abstract::BaseCube.a3da");
		F3D.Meshes.Add("abstract::Cone.a3da");
		F3D.Meshes.Add("abstract::Cylinder.a3da");


		
		this.model0 = new TF3D_Model("Sphere1");
		this.model0.AssignMesh(F3D.Meshes.FindByName("abstract::BaseCube.a3da"));
		this.model0.SetPosition(-4, 0, 0);
		this.model0.Enable();
		this.model0.ChangeSurface("MATbase", "MAT_shader_glow");
		
		
		this.model1 = new TF3D_Model("Sphere1");
		this.model1.AssignMesh(F3D.Meshes.FindByName("abstract::Sphere.a3da"));
		this.model1.SetPosition(-2, 0, 0);
		this.model1.Enable();
		this.model1.ChangeSurface("MATbase", "MAT_shader_diffuse");
		
		
		this.model1a = new TF3D_Model("Cone1");
		this.model1a.AssignMesh(F3D.Meshes.FindByName("abstract::Cone.a3da"));
		this.model1a.SetPosition(-2, 0, 2);
		this.model1a.Enable();
		this.model1a.ChangeSurface("MATbase", "MAT_shader_diffuse");
		
		this.model1b = new TF3D_Model("Cylinder1");
		this.model1b.AssignMesh(F3D.Meshes.FindByName("abstract::Cylinder.a3da"));
		this.model1b.SetPosition(-2, 0, -2);
		this.model1b.Enable();
		this.model1b.ChangeSurface("MATbase", "MAT_shader_diffuse");
		
		
		this.model2 = new TF3D_Model("Sphere2");
		this.model2.AssignMesh(F3D.Meshes.FindByName("abstract::Sphere.a3da"));
		this.model2.SetPosition(0, 0, 0);
		this.model2.Enable();
		this.model2.ChangeSurface("MATbase", "MAT_shader_envmap");
		
		this.model2a = new TF3D_Model("Cone2");
		this.model2a.AssignMesh(F3D.Meshes.FindByName("abstract::Cone.a3da"));
		this.model2a.SetPosition(0, 0, 2);
		this.model2a.Enable();
		this.model2a.ChangeSurface("MATbase", "MAT_shader_envmap");
		
		this.model2b = new TF3D_Model("Cylinder2");
		this.model2b.AssignMesh(F3D.Meshes.FindByName("abstract::Cylinder.a3da"));
		this.model2b.SetPosition(0, 0, -2);
		this.model2b.Enable();
		this.model2b.ChangeSurface("MATbase", "MAT_shader_envmap");
		
		this.model3 = new TF3D_Model("Sphere3");
		this.model3.AssignMesh(F3D.Meshes.FindByName("abstract::Sphere.a3da"));
		this.model3.SetPosition(2, 0, 0);
		this.model3.Enable();
		this.model3.ChangeSurface("MATbase", "MAT_shader_phong");
		
		this.model3a = new TF3D_Model("Cone3");
		this.model3a.AssignMesh(F3D.Meshes.FindByName("abstract::Cone.a3da"));
		this.model3a.SetPosition(2, 0, 2);
		this.model3a.Enable();
		this.model3a.ChangeSurface("MATbase", "MAT_shader_phong");
		
		this.model3b = new TF3D_Model("Cylinder3");
		this.model3b.AssignMesh(F3D.Meshes.FindByName("abstract::Cylinder.a3da"));
		this.model3b.SetPosition(2, 0, -2);
		this.model3b.Enable();
		this.model3b.ChangeSurface("MATbase", "MAT_shader_phong");
	}

	@Override
	public void onUpdate3D()
	{

		F3D.Draw.Axis(2.0f);

		if (Mouse.isInsideWindow())
		{
			if (Mouse.isButtonDown(0))
			{
				float dx = (float) Mouse.getDX() / 10.0f;
				float dy = (float) Mouse.getDY() / 10.0f;

				this.Camera.Turn(-dy, dx, 0.0f);

				if (Mouse.getX() < 3)
				{
					Mouse.setCursorPosition(F3D.Config.r_display_width - 4, Mouse.getY());
				}
				if (Mouse.getX() > F3D.Config.r_display_width - 3)
				{
					Mouse.setCursorPosition(4, Mouse.getY());
				}
				if (Mouse.getY() < 3)
				{
					Mouse.setCursorPosition(Mouse.getX(), F3D.Config.r_display_height - 4);
				}
				if (Mouse.getY() > F3D.Config.r_display_height - 3)
				{
					Mouse.setCursorPosition(Mouse.getX(), 4);
				}
			}
		}

		if (Keyboard.isKeyDown(Keyboard.KEY_W))
		{
			this.Camera.Move(0.0f, 0.0f, -0.05f);
		}

		if (Keyboard.isKeyDown(Keyboard.KEY_A))
		{
			this.Camera.Move(-0.05f, 0.0f, 0.0f);
		}

		if (Keyboard.isKeyDown(Keyboard.KEY_S))
		{
			this.Camera.Move(0.0f, 0.0f, 0.05f);
		}
		if (Keyboard.isKeyDown(Keyboard.KEY_D))
		{
			this.Camera.Move(0.05f, 0.0f, 0.0f);
		}
	
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
		new Demo_AutomaticShaderTest().Execute();
		System.exit(0);
	}

}

/**
 * 
 */
package demos;

import javax.vecmath.*;

import org.lwjgl.input.Keyboard;
import org.lwjgl.input.Mouse;

import AGFX.F3D.F3D;
import AGFX.F3D.AppWrapper.TF3D_AppWrapper;
import AGFX.F3D.Body.TF3D_Body;
import AGFX.F3D.Camera.TF3D_Camera;
import AGFX.F3D.FrameBufferObject.TF3D_FrameBufferObject;
import AGFX.F3D.Light.TF3D_Light;
import AGFX.F3D.Model.TF3D_Model;
import AGFX.F3D.Skybox.TF3D_Skybox;

/**
 * @author AndyGFX
 * 
 */
public class Demo_FrameBufferObject extends TF3D_AppWrapper
{

	public TF3D_Camera Camera1;
	public TF3D_Camera Camera2;
	public TF3D_Model  model1;
	public TF3D_Model  model2;
	public TF3D_Model  plane1;
	public TF3D_Model  plane2;
	public TF3D_FrameBufferObject pbuff;
	
	public int         id;

	public Demo_FrameBufferObject()
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
			F3D.Config.r_display_title = "jFinal3D Graphics Engine 2010 - FrameBufferObject";

		} catch (Exception e)
		{
			e.printStackTrace();
		}
	}

	@Override
	public void onInitialize()
	{
		F3D.Worlds.CreateWorld("MAIN_WORLD");
		F3D.Worlds.CreateWorld("SECOND_WORLD");

		F3D.Meshes.Add("abstract::Sphere.a3da");
		F3D.Meshes.Add("abstract::Plane.a3da");

		
		
		// ********************************************************************
		// WORLD #1

		F3D.Worlds.SetWorld("MAIN_WORLD");

		this.Camera1 = new TF3D_Camera("TargetCamera1");
		this.Camera1.SetPosition(-5.0f, 15.0f, 5.0f);
		this.Camera1.movespeed = 0.2f;
		this.Camera1.TargetPoint = new Vector3f(0f, 0, 0);
		this.Camera1.ctype = F3D.CAMERA_TYPE_TARGET;

		F3D.Cameras.Add(this.Camera1);

		// Add light to scene
		TF3D_Light light = new TF3D_Light("light_0", 0);
		light.SetPosition(3, 3, 3);
		light.Enable();

		this.model1 = new TF3D_Model("Sphere");
		this.model1.AssignMesh("abstract::Sphere.a3da");
		this.model1.SetPosition(2f, 2f, 0);
		this.model1.Enable();

		this.plane1 = new TF3D_Model("PPlane");
		this.plane1.AssignMesh("abstract::Plane.a3da");
		this.plane1.Enable();
		this.plane1.SetPosition(0f, 0f, 0f);
		this.plane1.SetRotation(0f, 0f, 0f);

		// ********************************************************************
		// WORLD #2

		
		F3D.Worlds.SetWorld("SECOND_WORLD");

		this.Camera2 = new TF3D_Camera("TargetCamera2");
		this.Camera2.SetPosition(0.0f, 15.0f, -25.0f);
		this.Camera2.movespeed = 0.2f;
		this.Camera2.TargetPoint = new Vector3f(0, 0, 0);
		this.Camera2.ctype = F3D.CAMERA_TYPE_TARGET;

		F3D.Cameras.Add(this.Camera2);

		this.model2 = new TF3D_Model("Sphere2");
		this.model2.AssignMesh("abstract::Sphere.a3da");
		this.model2.SetPosition(-2f, 1, 0);
		this.model2.Enable();
		this.model2.ChangeSurface("MATbase", "MAT_text_a");

		this.plane2 = new TF3D_Model("PPlane");
		this.plane2.AssignMesh("abstract::Plane.a3da");
		this.plane2.Enable();
		this.plane2.SetPosition(0f, 0f, 0f);
		this.plane2.SetRotation(0f, 0f, 0f);
		this.plane2.ChangeSurface("MATbase", "MATuvmap");
		
		F3D.Worlds.RenderManualy();
		
		
		this.pbuff = new TF3D_FrameBufferObject(800,600);
		
		
		
	}

	@Override
	public void onUpdate3D()
	{
		
		this.plane1.Turn(1, 0, 0);
		int w1 = F3D.Worlds.FindByName("MAIN_WORLD");
		int w2 = F3D.Worlds.FindByName("SECOND_WORLD");
		
		F3D.Worlds.SetCamera(F3D.Cameras.GetCamera("TargetCamera1"));
		this.pbuff.BeginRender();
		
		F3D.Worlds.UpdateWorld(w1);
		F3D.Worlds.RenderWorld(w1);
		this.pbuff.EndRender();
		
		
		F3D.Worlds.SetCamera(F3D.Cameras.GetCamera("TargetCamera2"));
		F3D.Worlds.UpdateWorld(w2);
		F3D.Worlds.RenderWorld(w2);
		
		/*
		this.pbuff.Bind();
		F3D.Meshes.items.get(1).Render();
		*/
		
	
		
		if (Mouse.isInsideWindow())
		{
    		if (Mouse.isButtonDown(0))
    		{
    			float dx = (float)Mouse.getDX()/10.0f;
    			float dy = (float)Mouse.getDY()/10.0f;
    			
    			F3D.Worlds.GetCamera().Turn( -dy, dx, 0.0f);
    		
    			if (Mouse.getX()<3) {Mouse.setCursorPosition(F3D.Config.r_display_width-4,Mouse.getY());}
        		if (Mouse.getX()>F3D.Config.r_display_width-3) {Mouse.setCursorPosition(4,Mouse.getY());}
        		if (Mouse.getY()<3) {Mouse.setCursorPosition(Mouse.getX(),F3D.Config.r_display_height-4);}
        		if (Mouse.getY()>F3D.Config.r_display_height-3) {Mouse.setCursorPosition(Mouse.getX(),4);}
    		}
		}
		
		
		if (Keyboard.isKeyDown(Keyboard.KEY_W))
		{
			F3D.Worlds.GetCamera().Move(0.0f, 0.0f, -0.05f);
		}
		
		if (Keyboard.isKeyDown(Keyboard.KEY_A))
		{
			F3D.Worlds.GetCamera().Move(-0.05f, 0.0f, 0.0f);
		}
		
		if (Keyboard.isKeyDown(Keyboard.KEY_S))
		{
			F3D.Worlds.GetCamera().Move(0.0f, 0.0f, 0.05f);
		}
		if (Keyboard.isKeyDown(Keyboard.KEY_D))
		{
			F3D.Worlds.GetCamera().Move(0.05f, 0.0f, 0.0f);
		}
		
		if (Keyboard.isKeyDown(Keyboard.KEY_1))
		{
			F3D.Worlds.SetWorld("MAIN_WORLD");
			F3D.Worlds.SetCamera(F3D.Cameras.GetCamera("TargetCamera1"));
		
		}

		if (Keyboard.isKeyDown(Keyboard.KEY_2))
		{
			F3D.Worlds.SetWorld("SECOND_WORLD");
			F3D.Worlds.SetCamera(F3D.Cameras.GetCamera("TargetCamera2"));
		
		}
	}

	@Override
	public void onUpdate2D()
	{
		
		this.pbuff.Bind();	
		//F3D.Surfaces.ApplyMaterial(F3D.Surfaces.FindByName("MATuvmap"));
		F3D.Draw.Rectangle(0, 0, 400, 300);
		//F3D.Draw.QuadBySizeAndUV(100, 100, 256, 256,1,1,0,0,0);
		
	}

	@Override
	public void OnDestroy()
	{

	}

	public static void main(String[] args)
	{

		new Demo_FrameBufferObject().Execute();
		System.exit(0);

	}

}

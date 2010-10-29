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

/**
 * @author AndyGFX
 * 
 */
public class Demo_FrameBufferObject extends TF3D_AppWrapper
{

	public TF3D_Camera Camera;
	public TF3D_Model  model1;
	public TF3D_Model  model2;
	public TF3D_Model  plane;
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
			F3D.Config.r_display_title = "jFinal3D Graphics Engine 2010 - Multiple WORLD";

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

		this.Camera = new TF3D_Camera("TargetCamera1");
		this.Camera.SetPosition(-5.0f, 5.0f, -5.0f);
		this.Camera.movespeed = 0.2f;
		this.Camera.TargetPoint = new Vector3f(2f, 0, 0);
		this.Camera.ctype = F3D.CAMERA_TYPE_TARGET;

		F3D.Cameras.Add(this.Camera);

		// Add light to scene
		TF3D_Light light = new TF3D_Light("light_0", 0);
		light.SetPosition(3, 3, 3);
		light.Enable();

		this.model1 = new TF3D_Model("Sphere");
		this.model1.AssignMesh("abstract::Sphere.a3da");
		this.model1.SetPosition(2f, 0, 0);
		this.model1.Enable();

		this.plane = new TF3D_Model("PPlane");
		this.plane.AssignMesh("abstract::Plane.a3da");
		this.plane.Enable();
		this.plane.SetPosition(0f, 0f, 0f);
		this.plane.SetRotation(0f, 0f, 0f);

		// ********************************************************************
		// WORLD #2

		
		F3D.Worlds.SetWorld("SECOND_WORLD");

		this.Camera = new TF3D_Camera("TargetCamera2");
		this.Camera.SetPosition(0.0f, 15.0f, -25.0f);
		this.Camera.movespeed = 0.2f;
		this.Camera.TargetPoint = new Vector3f(0, 0, 0);
		this.Camera.ctype = F3D.CAMERA_TYPE_FPS;

		F3D.Cameras.Add(this.Camera);

		this.model2 = new TF3D_Model("Sphere2");
		this.model2.AssignMesh("abstract::Sphere.a3da");
		this.model2.SetPosition(-2f, 1, 0);
		this.model2.Enable();
		this.model2.ChangeSurface("MATbase", "MAT_text_a");

		this.plane = new TF3D_Model("PPlane");
		this.plane.AssignMesh("abstract::Plane.a3da");
		this.plane.Enable();
		this.plane.SetPosition(0f, 0f, 0f);
		this.plane.SetRotation(0f, 0f, 0f);

		F3D.Worlds.RenderManualy();
		
		this.pbuff = new TF3D_FrameBufferObject(800,600);
	}

	@Override
	public void onUpdate3D()
	{
		
		int w1 = F3D.Worlds.FindByName("MAIN_WORLD");
		int w2 = F3D.Worlds.FindByName("SECOND_WORLD");
		
		
		
		
		this.pbuff.BeginRender();
		F3D.Worlds.UpdateWorld(w1);
		F3D.Worlds.RenderWorld(w1);
		this.pbuff.EndRender();
		
		
	
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
    			
    			
    			
    			F3D.Cameras.items.get(F3D.Cameras.CurrentCameraID).Turn( -dy, dx, 0.0f);
    		
    			if (Mouse.getX()<3) {Mouse.setCursorPosition(F3D.Config.r_display_width-4,Mouse.getY());}
        		if (Mouse.getX()>F3D.Config.r_display_width-3) {Mouse.setCursorPosition(4,Mouse.getY());}
        		if (Mouse.getY()<3) {Mouse.setCursorPosition(Mouse.getX(),F3D.Config.r_display_height-4);}
        		if (Mouse.getY()>F3D.Config.r_display_height-3) {Mouse.setCursorPosition(Mouse.getX(),4);}
    		}
		}
		
		
		if (Keyboard.isKeyDown(Keyboard.KEY_W))
		{
			F3D.Cameras.items.get(F3D.Cameras.CurrentCameraID).Move(0.0f, 0.0f, -0.05f);
		}
		
		if (Keyboard.isKeyDown(Keyboard.KEY_A))
		{
			F3D.Cameras.items.get(F3D.Cameras.CurrentCameraID).Move(-0.05f, 0.0f, 0.0f);
		}
		
		if (Keyboard.isKeyDown(Keyboard.KEY_S))
		{
			F3D.Cameras.items.get(F3D.Cameras.CurrentCameraID).Move(0.0f, 0.0f, 0.05f);
		}
		if (Keyboard.isKeyDown(Keyboard.KEY_D))
		{
			F3D.Cameras.items.get(F3D.Cameras.CurrentCameraID).Move(0.05f, 0.0f, 0.0f);
		}
		if (Keyboard.isKeyDown(Keyboard.KEY_1))
		{
			F3D.Worlds.SetWorld("MAIN_WORLD");
			F3D.Cameras.CurrentCameraID = F3D.Cameras.FindByName("TargetCamera1");
		}

		if (Keyboard.isKeyDown(Keyboard.KEY_2))
		{
			F3D.Worlds.SetWorld("SECOND_WORLD");
			F3D.Cameras.CurrentCameraID = F3D.Cameras.FindByName("TargetCamera2");
		}
	}

	@Override
	public void onUpdate2D()
	{
		
		this.pbuff.Bind();		
		F3D.Draw.Rectangle(0, 0, 256, 256);
		
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

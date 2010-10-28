package demos;

import javax.vecmath.*;

import org.lwjgl.input.Keyboard;
import org.lwjgl.input.Mouse;

import AGFX.F3D.F3D;
import AGFX.F3D.AppWrapper.TF3D_AppWrapper;
import AGFX.F3D.Camera.TF3D_Camera;
import AGFX.F3D.Light.TF3D_Light;
import AGFX.F3D.Model.TF3D_Model;
import AGFX.F3D.Parser.TF3D_PARSER;
import AGFX.F3D.Texture.TF3D_Texture;

public class Demo_RenderMultiSurfModel extends TF3D_AppWrapper
{

	public TF3D_Camera Camera;
	public TF3D_Texture Tex;
	public float angle = 0;
	public TF3D_PARSER PARSER;
	public TF3D_Model model;
	public int surface_id;
	
	public Demo_RenderMultiSurfModel()
	
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
		this.Camera = new TF3D_Camera("TargetCamera");
		this.Camera.SetPosition(0.0f, 0.0f, -10.0f);
		this.Camera.SetRotation(0.0f, 180.0f, 0.0f);
		this.Camera.movespeed = 0.2f;
		this.Camera.TargetPoint = new Vector3f(0,0,0);
		this.Camera.ctype = F3D.CAMERA_TYPE_FPS;
		
		F3D.Cameras.Add(this.Camera);
		
		
		// Add light to scene
		TF3D_Light light = new TF3D_Light("light_0", 0);
		light.SetPosition(3, 3, 3);
		light.Enable();
				
		F3D.Meshes.Add("abstract::MultiSurfCube.a3da");
		
		this.model = new TF3D_Model("Cube");
		this.model.AssignMesh(F3D.Meshes.FindByName("abstract::MultiSurfCube.a3da"));
		this.model.SetPosition(0, 0, 0);
		this.model.SetRotation(45, 45, 0);
		this.model.ChangeSurface("Cube_MAT_095A", "MAT_text_c");
		this.model.SetRenderSurface("MAT_text_c", false);
		
		this.model.Enable();
		
		
	}
	
	
	@Override
	public void onUpdate3D()
	{
		
		F3D.Draw.Axis(2.0f);
		
		if (Mouse.isInsideWindow())
		{
    		if (Mouse.isButtonDown(0))
    		{
    			float dx = (float)Mouse.getDX()/10.0f;
    			float dy = (float)Mouse.getDY()/10.0f;
    			
    			this.Camera.Turn( -dy, dx, 0.0f);
    		
    			if (Mouse.getX()<3) {Mouse.setCursorPosition(F3D.Config.r_display_width-4,Mouse.getY());}
        		if (Mouse.getX()>F3D.Config.r_display_width-3) {Mouse.setCursorPosition(4,Mouse.getY());}
        		if (Mouse.getY()<3) {Mouse.setCursorPosition(Mouse.getX(),F3D.Config.r_display_height-4);}
        		if (Mouse.getY()>F3D.Config.r_display_height-3) {Mouse.setCursorPosition(Mouse.getX(),4);}
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
		new Demo_RenderMultiSurfModel().Execute();		
		System.exit(0); 
	}



}

/**
 * 
 */
package demos;

import org.lwjgl.input.Keyboard;
import org.lwjgl.input.Mouse;

import AGFX.F3D.F3D;
import AGFX.F3D.AppWrapper.TF3D_AppWrapper;
import AGFX.F3D.Camera.TF3D_Camera;
import AGFX.F3D.Hud.TF3D_HUD_Image;
import AGFX.F3D.Light.TF3D_Light;
import AGFX.F3D.Mesh.TF3D_Mesh;

/**
 * @author AndyGFX
 *
 */
public class Demo_HUDImage extends TF3D_AppWrapper
{

	public TF3D_Camera Camera;
	public TF3D_Mesh mesh;
	public TF3D_HUD_Image HUD_img;
	public Demo_HUDImage()
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
			F3D.Config.r_display_title = "jFinal3D Graphics Engine 2010 - HUD Image";

			

		} catch (Exception e)
		{
			e.printStackTrace();
		}
	}

	@Override
	public void onInitialize()
	{
		this.Camera = new TF3D_Camera("FPSCamera");
		this.Camera.SetPosition(0.0f, 0.0f, -10.0f);
		this.Camera.SetRotation(0, 180, 0);	
		this.Camera.movespeed = 0.2f;
		this.Camera.ctype = F3D.CAMERA_TYPE_FPS;
		
		F3D.Cameras.Add(this.Camera);
		
		this.mesh = new TF3D_Mesh();
		this.mesh.Load("abstract::CubeObj.a3da");
		
		
		// Add light to scene
		TF3D_Light light = new TF3D_Light("light_0", 0);
		light.SetPosition(3, 3, 3);
		light.Enable();

		
		F3D.Viewport.DoubleFace(true);
		
		
		// add HUD image
		// basic HUD image
		this.HUD_img = new TF3D_HUD_Image();
		this.HUD_img.texture_id = F3D.Textures.FindByName("jf3d_logo");

		// Add image FX
		this.HUD_img.size.set(128, 128);
		this.HUD_img.property.Autosize = true;
		this.HUD_img.property.Texture = true;
		this.HUD_img.property.Blend = true;
		this.HUD_img.color.set(1.0f, 1.0f, 1.0f, 1.0f);
		this.HUD_img.transform.scroll.x = 0.0f;
		this.HUD_img.transform.scroll.y = 0.0f;
		this.HUD_img.transform.rotate = 0.0f;
		this.HUD_img.scale.set(1.0f, 1.0f);
		this.HUD_img.shape_angle = 0.0f;
		this.HUD_img.shape_origin.set(0, 0);

		// initialize HUD element
		this.HUD_img.Initialize();

		
	}
	
	
	@Override
	public void onUpdate3D()
	{
		F3D.Draw.Axis(2.0f);	
		this.mesh.Render();
		
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
			this.Camera.Move(0.0f, 0.0f, -0.1f);
		}
		
		if (Keyboard.isKeyDown(Keyboard.KEY_A))
		{
			this.Camera.Move(-0.1f, 0.0f, 0.0f);
		}
		
		if (Keyboard.isKeyDown(Keyboard.KEY_S))
		{
			this.Camera.Move(0.0f, 0.0f, 0.1f);
		}
		if (Keyboard.isKeyDown(Keyboard.KEY_D))
		{
			this.Camera.Move(0.1f, 0.0f, 0.0f);
		}
		
	}
	
	
	@Override
	public void onUpdate2D()
	{
		F3D.Viewport.DrawInfo(0,0);
		this.HUD_img.DrawAt(100,100);
	}
	
	@Override
	public void OnDestroy()
	{
		
	}
	public static void main(String[] args)
	{
		// TODO Auto-generated method stub
		new Demo_HUDImage().Execute();		
		System.exit(0); 
	}

}

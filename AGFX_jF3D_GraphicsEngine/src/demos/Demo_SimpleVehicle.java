/**
 * 
 */
package demos;


import org.lwjgl.input.Keyboard;
import org.lwjgl.input.Mouse;



import AGFX.F3D.F3D;
import AGFX.F3D.AppWrapper.TF3D_AppWrapper;
import AGFX.F3D.Body.TF3D_Body;
import AGFX.F3D.Camera.TF3D_Camera;
import AGFX.F3D.Light.TF3D_Light;
import AGFX.F3D.Model.TF3D_Model;
import AGFX.F3D.Skybox.TF3D_Skybox;
import AGFX.F3D.Vehicle.TF3D_Vehicle;



/**
 * @author AndyGFX
 *
 */
public class Demo_SimpleVehicle extends TF3D_AppWrapper
{

	public TF3D_Camera Camera;
	public TF3D_Body	landscape;
	public TF3D_Vehicle	car;
	public TF3D_Body   PSphere;
	
	
	public Demo_SimpleVehicle()
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
			F3D.Config.r_display_vsync = false;
			F3D.Config.r_display_title = "jFinal3D Graphics Engine 2010 - PHYSICS TEST";

			

		} catch (Exception e)
		{
			e.printStackTrace();
		}
	}

	@Override
	public void onInitialize()
	{
		this.Camera = new TF3D_Camera("FPSCamera");
		this.Camera.SetPosition(0.0f, 10.0f, -50.0f);
		this.Camera.SetRotation(0, 180, 0);
		
		this.Camera.movespeed = 0.2f;
		this.Camera.ctype = F3D.CAMERA_TYPE_FPS;
		
		F3D.Cameras.Add(this.Camera);
		
		F3D.Cameras.Sky = new TF3D_Skybox();
		
		F3D.Meshes.Add("abstract::jeep.a3da");
		F3D.Meshes.Add("abstract::jeep_wheel_L.a3da");
		F3D.Meshes.Add("abstract::jeep_wheel_R.a3da");		
		F3D.Meshes.Add("abstract::landscape.a3da");
		F3D.Meshes.Add("abstract::Sphere.a3da");
		
		// Add light to scene
		TF3D_Light light = new TF3D_Light("light_0", 0);
		light.SetPosition(3, 3, 3);
		light.Enable();
		
		this.landscape = new TF3D_Body("LANDSCAPE");
		this.landscape.AssignMesh("abstract::landscape.a3da");
		this.landscape.Enable();
		this.landscape.SetPosition(0f, 0f, 0f);
		this.landscape.SetRotation(0f, 0f, 0f);		
		this.landscape.CreateRigidBody(F3D.BULLET_SHAPE_TRIMESH, 0.0f);
		
		
		this.PSphere = new TF3D_Body("PSphere");
		this.PSphere.AssignMesh("abstract::Sphere.a3da");
		this.PSphere.Enable();
		this.PSphere.SetSurface("MATbase");
		this.PSphere.SetPosition(0.5f, 21f, 0);
		this.PSphere.SetRotation(0f, 0f, 0f);
		this.PSphere.CreateRigidBody(F3D.BULLET_SHAPE_SPHERE, 1.0f);
		
		
		
		this.car = new TF3D_Vehicle("CAR_01");
		this.car.model_schassis = F3D.Meshes.FindByName("abstract::jeep.a3da");
		this.car.model_wheel_FL = F3D.Meshes.FindByName("abstract::jeep_wheel_L.a3da");
		this.car.model_wheel_FR = F3D.Meshes.FindByName("abstract::jeep_wheel_R.a3da");
		this.car.model_wheel_RL = F3D.Meshes.FindByName("abstract::jeep_wheel_L.a3da");
		this.car.model_wheel_RR = F3D.Meshes.FindByName("abstract::jeep_wheel_R.a3da");
		
		this.car.SetPosition(0, 10, 0);
		
		this.car.Create();

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
		
		
	}
	
	@Override
	public void OnDestroy()
	{
		
	}
	public static void main(String[] args)
	{
		new Demo_SimpleVehicle().Execute();		
		System.exit(0); 
	}

}

/**
 * 
 */
package demos;

import org.lwjgl.input.Keyboard;
import AGFX.F3D.F3D;
import AGFX.F3D.AppWrapper.TF3D_AppWrapper;
import AGFX.F3D.Body.TF3D_Body;
import AGFX.F3D.Camera.TF3D_Camera;
import AGFX.F3D.Config.TF3D_Config;
import AGFX.F3D.Light.TF3D_Light;
import AGFX.F3D.Skybox.TF3D_Skybox;
import AGFX.F3D.Vehicle.TF3D_Vehicle;

/**
 * @author AndyGFX
 * 
 */
public class Demo_SimpleVehicle extends TF3D_AppWrapper
{

	public TF3D_Camera  Camera;
	public TF3D_Body    landscape;
	public TF3D_Vehicle car;
	public TF3D_Body    PSphere;

	public Demo_SimpleVehicle()
	{

	}

	@Override
	public void onConfigure()
	{
		try
		{

			F3D.Config = new TF3D_Config();
			
			F3D.Config.r_display_width = 800;
			F3D.Config.r_display_height = 600;
			F3D.Config.r_fullscreen = false;
			F3D.Config.r_display_vsync = true;
			F3D.Config.r_display_title = "jFinal3D Graphics Engine 2010 - "+ this.getClass().getName();

			super.onConfigure();

		} catch (Exception e)
		{
			e.printStackTrace();
		}
	}

	@Override
	public void onInitialize()
	{
		F3D.Worlds.CreateWorld("MAIN_WORLD");
		
		this.Camera = new TF3D_Camera("FPSCamera");
		this.Camera.SetPosition(0.0f, 15.0f, -30.0f);
		this.Camera.SetRotation(0, 180, 0);

		this.Camera.movespeed = 0.2f;
		this.Camera.ctype = F3D.CAMERA_TYPE_TARGET;

		F3D.Cameras.Add(this.Camera);
		F3D.Worlds.SetCamera(this.Camera);
		
		this.Camera.Sky = new TF3D_Skybox();

		F3D.Meshes.Add("abstract::jeep.a3da");
		F3D.Meshes.Add("abstract::jeep_wheel_L.a3da");
		F3D.Meshes.Add("abstract::jeep_wheel_R.a3da");
		F3D.Meshes.Add("abstract::Sphere.a3da");
		F3D.Meshes.Add("abstract::collision_landscape.a3da");
		F3D.Meshes.Add("abstract::landscape.a3da");
		
		// Add light to scene
		TF3D_Light light = new TF3D_Light("light_0", 0);
		light.SetPosition(3, 3, 3);
		light.Enable();
		

		
		this.landscape = new TF3D_Body("LANDSCAPE");
		this.landscape.AssignMesh("abstract::landscape.a3da");
		this.landscape.AssignCollisionMesh("abstract::collision_landscape.a3da");
		this.landscape.Enable();
		this.landscape.SetPosition(0f, 0f, 0f);
		this.landscape.SetRotation(0f, 0f, 0f);
		this.landscape.CreateRigidBody(F3D.BULLET_SHAPE_TRIMESH, 0.0f);
		
		this.PSphere = new TF3D_Body("PSphere");
		this.PSphere.AssignMesh("abstract::Sphere.a3da");
		this.PSphere.Enable();
		this.PSphere.SetPosition(0.5f, 21f, 0);
		this.PSphere.SetRotation(0f, 0f, 0f);
		this.PSphere.CreateRigidBody(F3D.BULLET_SHAPE_SPHERE, 1.0f);

		this.car = new TF3D_Vehicle("CAR_01");
		this.car.SetRotation(0, 45, 0);
		this.car.model_chassis = F3D.Meshes.FindByName("abstract::jeep.a3da");
		this.car.model_wheel_FL = F3D.Meshes.FindByName("abstract::jeep_wheel_L.a3da");
		this.car.model_wheel_FR = F3D.Meshes.FindByName("abstract::jeep_wheel_R.a3da");
		this.car.model_wheel_BL = F3D.Meshes.FindByName("abstract::jeep_wheel_L.a3da");
		this.car.model_wheel_BR = F3D.Meshes.FindByName("abstract::jeep_wheel_R.a3da");

		this.car.SetPosition(0, 10, 0);

		this.car.Create();

	}

	@Override
	public void onUpdate3D()
	{
		F3D.Draw.Axis(2.0f);

		// look at car
		F3D.Cameras.items.get(F3D.Cameras.CurrentCameraID).TargetPoint.set(this.car.GetPosition());

		if (Keyboard.isKeyDown(Keyboard.KEY_UP))
		{
			this.car.gEngineForce = 100f*this.car.maxEngineForce*F3D.Timer.AppSpeed();
			this.car.gBreakingForce = 0.f;

		} else if (Keyboard.isKeyDown(Keyboard.KEY_DOWN))
		{
			this.car.gBreakingForce = 100f*this.car.maxBreakingForce*F3D.Timer.AppSpeed();
			this.car.gEngineForce = 0.f;
		} else
		{
			this.car.gEngineForce = 0f;
		}

		if (Keyboard.isKeyDown(Keyboard.KEY_LEFT))
		{
			this.car.gVehicleSteering += this.car.steeringIncrement;
			if (this.car.gVehicleSteering > this.car.steeringClamp)
			{
				this.car.gVehicleSteering = this.car.steeringClamp;
			}

		} else if (Keyboard.isKeyDown(Keyboard.KEY_RIGHT))
		{
			this.car.gVehicleSteering -= this.car.steeringIncrement;
			if (this.car.gVehicleSteering < -this.car.steeringClamp)
			{
				this.car.gVehicleSteering = -this.car.steeringClamp;
			}

		}
		else
		{
			this.car.gVehicleSteering =0f;
		}

		if (Keyboard.isKeyDown(Keyboard.KEY_R))
		{
			this.car.Reset();
		}

	}

	@Override
	public void onUpdate2D()
	{
		F3D.Viewport.DrawInfo(0, 0);

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

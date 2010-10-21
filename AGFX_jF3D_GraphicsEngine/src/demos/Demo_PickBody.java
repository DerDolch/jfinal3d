/**
 * 
 */
package demos;

import javax.vecmath.Vector3f;

import org.lwjgl.input.Keyboard;
import org.lwjgl.input.Mouse;

import com.bulletphysics.collision.dispatch.CollisionWorld;
import com.bulletphysics.dynamics.RigidBody;

import AGFX.F3D.F3D;
import AGFX.F3D.AppWrapper.TF3D_AppWrapper;
import AGFX.F3D.Body.TF3D_Body;
import AGFX.F3D.Camera.TF3D_Camera;
import AGFX.F3D.Light.TF3D_Light;

import AGFX.F3D.Pivot.TF3D_Pivot;

/**
 * @author AndyGFX
 *
 */
public class Demo_PickBody extends TF3D_AppWrapper
{

	public TF3D_Camera Camera;
	public TF3D_Body   pbody1;
	public TF3D_Body   pbody2;
	public TF3D_Pivot  pivot;

	int odx = 0;
	int ody = 0;
	
	public Demo_PickBody()
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
			F3D.Config.r_display_title = "jFinal3D Graphics Engine 2010 - PICK BODY";
			F3D.Config.use_physics = true;
			F3D.Config.use_physics_debug = false;

			

		} catch (Exception e)
		{
			e.printStackTrace();
		}
	}

	@Override
	public void onInitialize()
	{
		this.Camera = new TF3D_Camera("FPSCamera");
		this.Camera.SetPosition(0.0f, 10.0f, -10.0f);
		this.Camera.SetRotation(0, 180, 0);
		this.Camera.movespeed = 0.2f;
		this.Camera.ctype = F3D.CAMERA_TYPE_FPS;
		
		F3D.Cameras.Add(this.Camera);
		
		
		// Add light to scene
		TF3D_Light light = new TF3D_Light("light_0", 0);
		light.SetPosition(3, 3, 3);
		light.Enable();
		
		
		F3D.Meshes.Add("abstract::Cube.a3da");
	
		//create pivot helper for simple calc ray line direction
		
		this.pivot = new TF3D_Pivot("Pivot");
		
	
		this.pbody1 = new TF3D_Body("PCube1");
		this.pbody1.AssignMesh("abstract::Cube.a3da");
		this.pbody1.Enable();
		this.pbody1.SetSurface("MATbase");
		this.pbody1.SetPosition(4f, 0f, 0);
		this.pbody1.SetRotation(0f, 0f, 0f);
		this.pbody1.CreateRigidBody(F3D.BULLET_SHAPE_BOX, 0f);
		
		this.pbody2 = new TF3D_Body("PCube2");
		this.pbody2.AssignMesh("abstract::Cube.a3da");
		this.pbody2.Enable();
		this.pbody2.SetSurface("MATbase");
		this.pbody2.SetPosition(-4f, 0f, 0);
		this.pbody2.SetRotation(0f, 0f, 0f);
		this.pbody2.CreateRigidBody(F3D.BULLET_SHAPE_BOX, 0f);
		
		
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
		
		this.pivot.Turn(0,2*F3D.Timer.AppSpeed(),0);
		
		
		Vector3f pA = new Vector3f();
		Vector3f pB = new Vector3f();
		
		this.pivot.UpdateAxisDirection();
		
		pA.add(this.pivot.axis._forward);
		pA.scale(2f);
		
		pB.add(this.pivot.axis._forward);
		pB.scale(10f);
		
		// Draw visual raycast line
		F3D.Draw.Line3D(pA, pB);
		
		// create callback for raycast from pA to pB point
		CollisionWorld.ClosestRayResultCallback rayCallback = new CollisionWorld.ClosestRayResultCallback(pA, pB);
		F3D.Physic.dynamicsWorld.rayTest(pA, pB, rayCallback);
		
		// when exist HIT
		if (rayCallback.hasHit()) 
		{
			// get what was touched
			RigidBody body = RigidBody.upcast(rayCallback.collisionObject);
			
			// when it's body, return pointer to TF3D_MODEL instance
			if (body != null) 
			{
				TF3D_Body pb = (TF3D_Body) body.getUserPointer();
				F3D.Log.info("MAIN", pb.name);
			}
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
		new Demo_PickBody().Execute();		
		System.exit(0); 
	}

}
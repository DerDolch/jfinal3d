/**
 * 
 */
package demos;

import javax.vecmath.*;

import AGFX.F3D.F3D;
import AGFX.F3D.AppWrapper.TF3D_AppWrapper;
import AGFX.F3D.Camera.TF3D_Camera;
import AGFX.F3D.Light.TF3D_Light;
import AGFX.F3D.Model.TF3D_Model;
import AGFX.F3D.Pivot.TF3D_Pivot;

/**
 * @author AndyGFX
 * http://www.songho.ca/opengl/gl_transform.html
 */
public class Demo_ParentModel extends TF3D_AppWrapper
{

	public TF3D_Model mesh;
	public TF3D_Model pmesh;
	public TF3D_Model p2mesh;
	public TF3D_Camera Camera;
	public TF3D_Pivot	pivot;
	
	
	public TF3D_Model sign;
	
	public Demo_ParentModel()
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
			F3D.Config.r_display_title = "jFinal3D Graphics Engine 2010 - PARENT DEMO";
			
			

		} catch (Exception e)
		{
			e.printStackTrace();
		}
	}

	@Override
	public void onInitialize()
	{
		this.Camera = new TF3D_Camera("TargetCamera");
		this.Camera.SetPosition(5.0f, 5.0f, -15.0f);		
		this.Camera.movespeed = 0.2f;
		this.Camera.TargetPoint = new Vector3f(0,0,0);
		this.Camera.ctype = F3D.CAMERA_TYPE_TARGET;
		
		F3D.Cameras.Add(this.Camera);
		
		F3D.Meshes.Add("abstract::Cube.a3da");
		
		this.sign = new TF3D_Model("SIGN");				
		this.sign.AssignMesh("abstract::Cube.a3da");		
		this.sign.SetScale(0.05f, 2.0f, 0.05f);
		
		this.mesh = new TF3D_Model("CubeObj_0");		
		this.mesh.AssignMesh("abstract::Cube.a3da");
		
		
		this.pmesh = new TF3D_Model("CubeObj_1");
		this.pmesh.AssignMesh("abstract::Cube.a3da");
		this.pmesh.SetPosition(2,0,0);
		
		this.p2mesh = new TF3D_Model("CubeObj_2");
		this.p2mesh.AssignMesh("abstract::Cube.a3da");
		this.p2mesh.SetPosition(-2,0,0);
			
		this.mesh.AddChild(this.pmesh);
		this.mesh.AddChild(this.p2mesh);
		this.mesh.SetPosition(0,0,2);
		
		this.pivot = new TF3D_Pivot("Pivot");
		
		
		this.pivot.AddChild(this.mesh);
		
		// Add light to scene
		TF3D_Light light = new TF3D_Light("light_0", 0);
		light.SetPosition(3, 3, 3);
		light.Enable();
	}
	
	@Override
	public void onUpdate3D()
	{
		//this.mesh.Turn(0, 0.5f, 0);
		//this.mesh.Turn(0.5f, 0, 0);
		this.pmesh.Turn(0, 0.5f, 0);
		this.p2mesh.Turn(0, -1.0f, 0);
		this.pivot.Turn(0, -10.0f*F3D.Timer.AppSpeed(), 0);
		
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
		
		new Demo_ParentModel().Execute();		
		System.exit(0); 

	}

}


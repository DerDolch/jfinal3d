/**
 * 
 */
package demos;

import java.io.IOException;

import org.lwjgl.input.Keyboard;

import AGFX.F3D.F3D;
import AGFX.F3D.AppWrapper.TF3D_AppWrapper;
import AGFX.F3D.Config.TF3D_Config;

/**
 * @author AndyGFX
 * 
 */
public class Demo_ResourceFrom_JAR extends TF3D_AppWrapper
{

	public Demo_ResourceFrom_JAR()
	{
	}

	@Override
	public void onConfigure()
	{
		try
		{

			// Redefine Config

			F3D.Config = new TF3D_Config();

			F3D.Config.r_display_width = 800;
			F3D.Config.r_display_height = 600;
			F3D.Config.r_fullscreen = false;
			F3D.Config.r_display_vsync = false;
			F3D.Config.io_preload_source = "PRELOAD_FROM_JAR";  // <---- VERY IMPORTANT !!!
			F3D.Config.io_preload_data = false;					// <---- VERY IMPORTANT !!!
			
			F3D.Config.r_display_title = "jFinal3D Graphics Engine 2010 - Reasurce from JAR";
			F3D.AbstractFiles.Load("config/media.folders");

			
			super.onConfigure();

		} catch (Exception e)
		{
			e.printStackTrace();
		}
	}

	@Override
	public void onInitialize()
	{

		// Step[01]: CREATE AbstarctFiles from file

		

	}

	@Override
	public void onUpdate3D()
	{

	}

	@Override
	public void onUpdate2D()
	{
		//F3D.Viewport.DrawInfo(0, 0);
	}

	@Override
	public void OnDestroy()
	{

	}

	public static void main(String[] args)
	{

		new Demo_ResourceFrom_JAR().Execute();
		System.exit(0);

	}

}

/**
 * 
 */
package demos;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLConnection;

import org.newdawn.slick.opengl.Texture;
import org.newdawn.slick.opengl.TextureLoader;

import AGFX.F3D.F3D;
import AGFX.F3D.AppWrapper.TF3D_AppWrapper;

/**
 * @author AndyGFX
 *
 */
public class Demo_JAR_fileloader extends TF3D_AppWrapper
{

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
			F3D.Config.r_display_title = "jFinal3D Graphics Engine 2010";

			
			

		} catch (Exception e)
		{
			e.printStackTrace();
		}
	}

	@Override
	public void onInitialize()
	{
		
		
		
		F3D.AbstractFiles.Save("D:/media.folders");
		
		
		
		  try
		{
		
			// recreate abstract file list from file
			//F3D.AbstractFiles.Load(  new FileInputStream("D:/media.folder"));
			
			// recreate abstract file list from JAR
			F3D.AbstractFiles.Load( ClassLoader.getSystemResource("media/media.folders").openStream());
			
		} catch (IOException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	@Override
	public void onUpdate3D()
	{
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
		
		new Demo_JAR_fileloader().Execute();		
		System.exit(0); 

	}


}

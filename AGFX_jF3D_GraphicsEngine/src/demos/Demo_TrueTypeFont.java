/**
 * 
 */
package demos;

import java.awt.Font;

import AGFX.F3D.F3D;
import AGFX.F3D.AppWrapper.TF3D_AppWrapper;
import AGFX.F3D.Font.TF3D_Font_TTF;

/**
 * @author AndyGFX
 * 
 */
public class Demo_TrueTypeFont extends TF3D_AppWrapper
{

	TF3D_Font_TTF  ttf;
	Font 			font;
	
	public Demo_TrueTypeFont()
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
			F3D.Config.r_display_title = "jFinal3D Graphics Engine 2010 - TRUETYPE FONT";

			
			

		} catch (Exception e)
		{
			e.printStackTrace();
		}
	}

	@Override
	public void onInitialize()
	{
		Font font = new Font("Verdana", Font.BOLD, 32);
		this.ttf = new TF3D_Font_TTF(font, true);
	}
	
	@Override
	public void onUpdate3D()
	{
	}
	
	
	@Override
	public void onUpdate2D()
	{
		
		
		this.ttf.drawString(50,50, "Demo of Tryetype font", 1f, 1f);
		F3D.Viewport.DrawInfo(0, 0);
	}
	
	@Override
	public void OnDestroy()
	{
		
	}
	
	
	public static void main(String[] args)
	{
		
		new Demo_TrueTypeFont().Execute();		
		System.exit(0); 

	}

}

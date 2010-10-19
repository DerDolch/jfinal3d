package demos;

import AGFX.F3D.F3D;
import AGFX.F3D.AppWrapper.TF3D_AppWrapper;
import AGFX.F3D.Font.TF3D_Font;

public class Demo_FontLoad extends TF3D_AppWrapper
{

	private TF3D_Font  font1;
	private TF3D_Font  font2;
	
	public Demo_FontLoad()
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
			F3D.Config.r_display_title = "jFinal3D Graphics Engine 2010 - LOAD FONT DEMO";

			
			

		} catch (Exception e)
		{
			e.printStackTrace();
		}
	}

	@Override
	public void onInitialize()
	{
		F3D.Log.info("Demo_FontLoad", "onInitialize()");
		
		// Add items needed for font rendering
	/*	
		F3D.MaterialEvents.Load("abstract::alpha_mask.event");
		
		F3D.Textures.Add("courier_new_8_normal", "abstract::courier_new_8_normal.png",false);		
		F3D.Textures.Add("courier_new_8_bold", "abstract::courier_new_8_bold.png",false);
		F3D.Textures.Add("tahoma_8_normal", "abstract::tahoma_8_normal.png",false);
		F3D.Textures.Add("tahoma_8_bold", "abstract::tahoma_8_bold.png",false);
		F3D.Textures.Load("abstract::text_d.texture");
		
		F3D.Surfaces.Load("abstract::courier_new_8_normal.mat");
		F3D.Surfaces.Load("abstract::courier_new_8_bold.mat");
		F3D.Surfaces.Load("abstract::tahoma_8_normal.mat");
		F3D.Surfaces.Load("abstract::tahoma_8_bold.mat");

	*/
		// FONT 
		this.font1 = new TF3D_Font("courier_new_8_normal", "MAT_courier_new_8_normal", "abstract::courier_new_8_normal.ini");
		this.font2 = new TF3D_Font("courier_new_8_bold", "MAT_courier_new_8_bold", "abstract::courier_new_8_bold.ini");
	
		F3D.Fonts.Add(font1);
		F3D.Fonts.Add(font2);
		F3D.Fonts.Load("abstract::tahoma_8_bold.font");
		F3D.Fonts.Load("abstract::tahoma_8_normal.font");
		
		F3D.Log.info("Demo_FontLoad", "TA3D_Demo: ........... done");
	}
	
	@Override
	public void onUpdate3D()
	{
	}
	
	
	@Override
	public void onUpdate2D()
	{
		this.font1.DrawText(10.0f,50.0f, "A3D Graphics Engine [Courier normal]",0);
		this.font2.DrawText(10.0f,70.0f, "A3D Graphics Engine [Courier bold]",0);
		F3D.Fonts.DrawText("tahoma_8n", 10.0f, 90.0f, "A3D Graphics Engine [Tahoma bold]", 0);
		F3D.Fonts.DrawText("tahoma_8b", 10.0f, 100.0f, "A3D Graphics Engine [Tahoma bold]", 0);

	}
	
	@Override
	public void OnDestroy()
	{
		
	}
	
	
	public static void main(String[] args)
	{
		
		new Demo_FontLoad().Execute();		
		System.exit(0); 

	}

}

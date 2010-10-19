/**
 * 
 */
package AGFX.F3D.Config;

import AGFX.F3D.F3D;


/**
 * @author AndyGFX
 *
 */
public class TF3D_Config
{
	/**  Fullscreen mode true/false*/
	public Boolean r_fullscreen;
	/**  define screen width*/
	public int r_display_width;
	/**  define screen height*/
	public int r_display_height;
	/**  define color depth (Bit Per Pixel)*/
	public int r_display_bpp;
	/**  Enable/Disable Vertical Sync (true/false)*/
	public Boolean r_display_vsync;
	/**  set application title*/
	public String r_display_title;
	/**  enable/disdable preloading data from defined folder on start-up*/
	public Boolean io_preload_data;	
	/**  set folder for preloading*/
	public String io_preload_folder;
	public Boolean use_gl_light = true;
	/**
	 * Enable/DIsable Auto assign entity to world.entities list
	 */
	public Boolean e_world_autoassign = true;
	public Boolean use_physics_debug = true;
	public Boolean io_mesh_asci_to_bin = true;
	
	
	// -----------------------------------------------------------------------
	// TF3D_Config: 
	// -----------------------------------------------------------------------
	/**
	 * <BR>-------------------------------------------------------------------<BR> 
	 *  Constructor<BR> 
	 * <BR>-------------------------------------------------------------------<BR> 
	 */
	// -----------------------------------------------------------------------
	public TF3D_Config()
	{
		this.r_display_bpp = 16;
		this.r_display_height = 600;
		this.r_display_width = 800;
		this.r_fullscreen = false;
		this.r_display_vsync = false;
		this.r_display_title = "LWJGL Application";
		this.io_preload_data = true;
		this.io_preload_folder = "media";
		this.e_world_autoassign = true;
		
		F3D.Log.info("TF3D_Config","Config class created");
	}
}

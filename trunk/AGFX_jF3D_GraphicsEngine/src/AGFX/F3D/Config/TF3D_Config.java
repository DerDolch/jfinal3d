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
	/**  setup display field of view */
	public float r_display_fov;
	/**  define screen height*/
	public int r_display_height;
	/**  define color depth (Bit Per Pixel)*/
	public int r_display_bpp;
	public int r_anisotropy_filtering = 0;
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
	/**  Enable DEBUG BULLET physics when is used F10 works like ON/OFF*/
	public Boolean use_physics_debug = true;
	/**  enable/disable autosave mesh data to serialized format when asci file format a3da is loaded*/
	public Boolean io_mesh_asci_to_bin = true;	
	/**  enable/disable using Bullet physics in application*/
	public Boolean use_physics = true;
	public int io_preload_source = F3D.PRELOAD_FROM_FOLDER;
	public String io_preload_source_name = "media.folders";
	
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
		this.io_preload_source_name = "media.folders";
		this.io_preload_source = F3D.PRELOAD_FROM_FOLDER;
		this.e_world_autoassign = true;
		this.io_mesh_asci_to_bin = true;
		this.r_anisotropy_filtering = 0;
		this.r_display_fov = 65f;
		

		F3D.Log.info("TF3D_Config","Config class created");
	}
}

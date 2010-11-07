/**
 * 
 */
package AGFX.F3D.Config;

import AGFX.F3D.F3D;
import AGFX.F3D.Material.TF3D_Material;
import AGFX.F3D.Parser.TF3D_PARSER;
import AGFX.F3D.Utils.TF3D_AbstractFiles;

/**
 * @author AndyGFX
 * 
 */
public class TF3D_Config
{
	/** Fullscreen mode true/false */
	public Boolean r_fullscreen;

	/** define screen width */
	public int     r_display_width;

	/** setup display field of view */
	public float   r_display_fov;

	/** define screen height */
	public int     r_display_height;
	
	/** define color depth (Bit Per Pixel) */
	public int     r_display_bpp;
	
	public int     r_anisotropy_filtering = 0;
	
	/** Enable/Disable Vertical Sync (true/false) */	
	public Boolean r_display_vsync;
	
	/** set application title */
	public String  r_display_title;
	
	/** enable/disdable preloading data from defined folder on start-up */
	public Boolean io_preload_data;
	
	/** set folder for preloading */
	public String  io_preload_folder;
	public Boolean use_gl_light           = true;
	
	/**
	 * Enable/DIsable Auto assign entity to world.entities list
	 */
	public Boolean e_world_autoassign     = true;
	
	/** Enable DEBUG BULLET physics when is used F10 works like ON/OFF */
	public Boolean use_physics_debug      = true;
	
	/**
	 * enable/disable autosave mesh data to serialized format when asci file
	 * format a3da is loaded
	 */
	public Boolean io_mesh_asci_to_bin    = true;
	
	/** enable/disable using Bullet physics in application */
	public Boolean use_physics            = true;
	
	/** enable/disable using GLSL shaders */
	public Boolean use_shaders            = true;
	
	/**  preolad data from "PRELOAD_FROM_FOLDER" or "PRELOAD_FROM_JAR"*/
	public String     io_preload_source      = "PRELOAD_FROM_FOLDER";
	public String  io_preload_source_name = "media.folders";

	// -----------------------------------------------------------------------
	// TF3D_Config:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Constructor<BR>
	 * <BR>
	 * -------------------------------------------------------------------<BR>
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
		this.io_preload_source = "PRELOAD_FROM_FOLDER";
		this.e_world_autoassign = true;
		this.io_mesh_asci_to_bin = true;
		this.r_anisotropy_filtering = 0;
		this.r_display_fov = 65f;

		// F3D.Log.info("TF3D_Config","Config class created");
	}

	public void Load(String filename)
	{
		TF3D_PARSER PARSER = new TF3D_PARSER();
		TF3D_Material mat;
		int BLOCK_ID;
		String tmp_str;

		F3D.Log.info("TF3D_Config", "Loading ... " + filename);
		Boolean Exist = F3D.AbstractFiles.ExistFile(filename);

		if (!Exist)
		{
			F3D.Log.error("TF3D_Config", "Can't load file:" + filename);
		}

		PARSER.ParseFile(F3D.AbstractFiles.GetFullPath(filename));

		for (BLOCK_ID = 0; BLOCK_ID < PARSER.GetBlocksCount(); BLOCK_ID++)
		{
			PARSER.SetBlock(BLOCK_ID);

			this.r_fullscreen = PARSER.GetAs_BOOLEAN("r_fullscreen");
			this.r_display_width = PARSER.GetAs_INTEGER("r_display_width");
			this.r_display_height = PARSER.GetAs_INTEGER("r_display_height");
			this.r_display_fov = PARSER.GetAs_FLOAT("r_display_fov");
			this.r_display_bpp = PARSER.GetAs_INTEGER("r_display_bpp");
			this.r_anisotropy_filtering = PARSER.GetAs_INTEGER("r_anisotropy_filtering");
			this.r_display_vsync = PARSER.GetAs_BOOLEAN("r_display_vsync");
			this.r_display_title = PARSER.GetAs_STRING("r_display_title");
			this.io_preload_data = PARSER.GetAs_BOOLEAN("io_preload_data");
			this.io_preload_folder = PARSER.GetAs_STRING("io_preload_folder");
			this.use_gl_light = PARSER.GetAs_BOOLEAN("use_gl_light");
			this.e_world_autoassign = PARSER.GetAs_BOOLEAN("e_world_autoassign");
			this.use_physics_debug = PARSER.GetAs_BOOLEAN("use_physics_debug");
			this.io_mesh_asci_to_bin = PARSER.GetAs_BOOLEAN("io_mesh_asci_to_bin");
			this.use_physics = PARSER.GetAs_BOOLEAN("use_physics");
			this.use_shaders = PARSER.GetAs_BOOLEAN("use_shaders");
			this.io_preload_source = PARSER.GetAs_STRING("io_preload_source");
			this.io_preload_source_name = PARSER.GetAs_STRING("io_preload_source_name");

		}

		F3D.AbstractFiles = new TF3D_AbstractFiles();
		
		F3D.AbstractFiles.Save("config/"+this.io_preload_source_name);
		
		if (F3D.ABSTARCTFILE_LOG)
		{
			F3D.AbstractFiles.Dump();
		}
	}
}

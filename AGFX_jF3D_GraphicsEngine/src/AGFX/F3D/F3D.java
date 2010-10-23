/**
 * 
 */
package AGFX.F3D;

import org.lwjgl.LWJGLException;

import AGFX.F3D.Camera.TF3D_CameraManager;
import AGFX.F3D.Config.TF3D_Config;
import AGFX.F3D.Engine.TF3D_Display;
import AGFX.F3D.Engine.TF3D_Extensions;
import AGFX.F3D.Engine.TF3D_Log;
import AGFX.F3D.Engine.TF3D_Viewport;
import AGFX.F3D.Font.TF3D_FontManager;
import AGFX.F3D.Helpers.TF3D_Helpers;
import AGFX.F3D.Keyboard.TF3D_Keyboard;
import AGFX.F3D.Material.TF3D_MaterialEventManager;
import AGFX.F3D.Math.TF3D_Frustum;
import AGFX.F3D.Mesh.TF3D_MeshManager;
import AGFX.F3D.Physics.TF3D_Physics;
import AGFX.F3D.Pick.TF3D_Pick;
import AGFX.F3D.Preloader.TF3D_Preloader;
import AGFX.F3D.Surface.TF3D_SurfaceManager;
import AGFX.F3D.Texture.TF3D_TextureManager;
import AGFX.F3D.Timer.TF3D_Timer2;
import AGFX.F3D.Utils.TF3D_AbstractFiles;
import AGFX.F3D.World.TF3D_World;

/**
 * @author AndyGFX
 * 
 */
public class F3D
{
	// '-----------------------------------------------------------------
	// ' LOG: CONST
	// '-----------------------------------------------------------------
	public static final boolean             PARSER_LOG                 = false;
	public static final boolean             ABSTARCTFILE_LOG           = false;

	// '-----------------------------------------------------------------
	// ' CLASSNAME: CONST
	// '-----------------------------------------------------------------
	public static final int                 CLASS_LIGHT                = 0;
	public static final int                 CLASS_MESH                 = 1;
	public static final int                 CLASS_MODEL                = 2;
	public static final int                 CLASS_PIVOT                = 3;
	public static final int                 CLASS_SPRITE               = 4;
	public static final int                 CLASS_CAMERA               = 5;
	public static final int                 CLASS_BODY                 = 6;

	// '-----------------------------------------------------------------
	// ' CAMERA: CONST
	// '-----------------------------------------------------------------
	public static final int                 CAMERA_MODE_FREELOOK       = 0;
	public static final int                 CAMERA_MODE_WALK           = 1;

	public static final int                 CAMERA_TYPE_FPS            = 0;
	public static final int                 CAMERA_TYPE_ORBIT          = 1;
	public static final int                 CAMERA_TYPE_TARGET         = 2;

	// '-----------------------------------------------------------------
	// ' TEXTURES: CONST
	// '-----------------------------------------------------------------

	public static final int                 MAX_TMU                    = 4;

	// '-----------------------------------------------------------------
	// ' FONT: CONST
	// '-----------------------------------------------------------------

	public static final int                 MAX_CHARS                  = 255;

	// '-----------------------------------------------------------------
	// ' BILLBOARD: CONST
	// '-----------------------------------------------------------------

	public static final int                 BM_AXIS_X                  = 1;
	public static final int                 BM_AXIS_Y                  = 2;
	public static final int                 BM_AXIS_Z                  = 3;
	public static final int                 BM_DIRECTIONAL             = 4;
	public static final int                 BM_SPRITE                  = 5;

	// '-----------------------------------------------------------------
	// ' MATH: CONST
	// '-----------------------------------------------------------------

	public static final float               DEGTORAD                   = 0.017453292519943295769236907684886f;
	public static final float               RADTODEG                   = 57.295779513082320876798154814105f;

	// '-----------------------------------------------------------------
	// ' BULLET SHAPE: CONST
	// '-----------------------------------------------------------------

	public static final int                 BULLET_SHAPE_PLANE         = 1;
	public static final int                 BULLET_SHAPE_BOX           = 2;
	public static final int                 BULLET_SHAPE_SPHERE        = 3;
	public static final int                 BULLET_SHAPE_CYLINDER      = 5;
	public static final int                 BULLET_SHAPE_CYLINDER_X    = 6;
	public static final int                 BULLET_SHAPE_CYLINDER_Z    = 7;
	public static final int                 BULLET_SHAPE_CONE          = 8;
	public static final int                 BULLET_SHAPE_CONE_X        = 9;
	public static final int                 BULLET_SHAPE_CONE_Z        = 10;
	public static final int                 BULLET_SHAPE_CAPSULE_X     = 11;
	public static final int                 BULLET_SHAPE_CAPSULE_Z     = 12;
	public static final int                 BULLET_SHAPE_CAPSULE       = 13;
	public static final int                 BULLET_SHAPE_TRIMESH       = 14;

	// '-----------------------------------------------------------------
	// ' PARTICLE ENGINE: CONST
	// '-----------------------------------------------------------------

	public final static int                 PARTICLE_TYPE_CONSTANT     = 0;
	public final static int                 PARTICLE_TYPE_FADE         = 1;
	public final static int                 PARTICLE_TYPE_FLICKERFADE  = 2;

	public final static int                 PARTICLE_COLOR_TYPE_GREEN  = 0;
	public final static int                 PARTICLE_COLOR_TYPE_RED    = 1;
	public final static int                 PARTICLE_COLOR_TYPE_WHITE  = 2;
	public final static int                 PARTICLE_COLOR_TYPE_YELLOW = 3;

	public final static int                 PARTICLE_STATE_DEAD        = 0;
	public final static int                 PARTICLE_STATE_ALIVE       = 1;

	// '-----------------------------------------------------------------
	// ' FIELDS
	// '-----------------------------------------------------------------

	public static TF3D_AbstractFiles        AbstractFiles;
	public static TF3D_Config               Config;
	public static TF3D_Extensions           Extensions;
	public static TF3D_Viewport             Viewport;
	public static TF3D_Display              Display;
	public static TF3D_Log                  Log;
	public static TF3D_CameraManager        Cameras;
	public static TF3D_Frustum              Frustum;
	public static TF3D_TextureManager       Textures;
	public static TF3D_Timer2               Timer;
	/** Material Event container */
	public static TF3D_MaterialEventManager MaterialEvents;
	/** Surface container */
	public static TF3D_SurfaceManager       Surfaces;
	/** Fonts container */
	public static TF3D_FontManager          Fonts;
	/**
	 * Preloading data events/textures/materials when is ptreloading enabled in
	 * config
	 */
	public static TF3D_Preloader            Preloader;
	/** Billboard and sprites container */
	public static TF3D_MeshManager          Meshes;
	public static TF3D_Helpers              Draw;
	public static TF3D_World                World;
	public static TF3D_Physics              Physic;
	public static TF3D_Keyboard             Key;
	public static TF3D_Pick					Pick;
	
	public static void Create()
	{

		F3D.Log = new TF3D_Log();
		F3D.Log.info("F3D", "---- START ----");

		F3D.Config = new TF3D_Config();
		F3D.Preloader = new TF3D_Preloader();
		F3D.Display = new TF3D_Display();
		F3D.Viewport = new TF3D_Viewport();
		F3D.Cameras = new TF3D_CameraManager();
		F3D.AbstractFiles = new TF3D_AbstractFiles();
		F3D.Frustum = new TF3D_Frustum();
		F3D.Textures = new TF3D_TextureManager();
		F3D.Timer = new TF3D_Timer2();
		F3D.MaterialEvents = new TF3D_MaterialEventManager();
		F3D.Surfaces = new TF3D_SurfaceManager();
		F3D.Fonts = new TF3D_FontManager();
		F3D.Draw = new TF3D_Helpers();
		F3D.Meshes = new TF3D_MeshManager();
		F3D.World = new TF3D_World();
		if (F3D.Config.use_physics)
		{
			F3D.Physic = new TF3D_Physics();
			F3D.Pick = new TF3D_Pick();
		} else
		{
			F3D.Physic = null;
		}
		F3D.Key = new TF3D_Keyboard();

	}

	public static void Initialize() throws LWJGLException
	{

		// Additional initialization
		F3D.Display.Create();
		F3D.Extensions = new TF3D_Extensions();
		F3D.Viewport.Init3D();
		F3D.Preloader.PreloadData();

		F3D.Fonts.Load("abstract::system.font");
		
		if (F3D.Config.use_physics) F3D.Physic.Initialize();

	}

	public static void Destroy()
	{
		F3D.World.Destroy();
		F3D.Fonts.Destroy();
		F3D.Meshes.Destroy();
		F3D.Textures.Destroy();
		F3D.Surfaces.Destroy();
		F3D.Cameras.Destroy();
		F3D.Display.Destroy();

		F3D.Log.info("F3D", "---- END ----");
	}
}

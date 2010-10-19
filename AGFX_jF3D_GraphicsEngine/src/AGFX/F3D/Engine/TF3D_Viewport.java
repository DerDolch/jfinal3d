/**
 * 
 */
package AGFX.F3D.Engine;

import AGFX.F3D.F3D;
import AGFX.F3D.Font.TF3D_Font;



import static org.lwjgl.opengl.GL11.*;
import static org.lwjgl.opengl.GL13.*;
import static org.lwjgl.util.glu.GLU.*;

/**
 * @author AndyGFX
 * 
 */
public class TF3D_Viewport
{
	public Boolean bRenderEnbale;
	public Boolean bFinished;
	public TF3D_Font font;
	
	public TF3D_Viewport()
	{
		F3D.Log.info("TF3D_Viewport","OpenGL viewport class created");
		
	}


	// -----------------------------------------------------------------------
	// TF3D_Viewport: 
	// -----------------------------------------------------------------------
	/**
	 * <BR>-------------------------------------------------------------------<BR> 
	 *  Initialize OpenGL rendering context
	 * <BR>-------------------------------------------------------------------<BR> 
	 */
	// -----------------------------------------------------------------------
	public void Init3D()
	{
		
		this.Resize();
		
		// Settings
		glShadeModel(GL_SMOOTH); // Enable Smooth Shading
		glClearColor(0.5f, 0.5f, 0.5f, 1.0f); // We'll Clear To The Color Of
		glClearDepth(1.0f); // Depth Buffer Setup
		glEnable(GL_DEPTH_TEST); // Enables Depth Testing
		glDepthFunc(GL_LEQUAL); // The Type Of Depth Testing To Do
		
		glEnable(GL_CULL_FACE);
		glFrontFace(GL_CCW); // CCW face orientation ON
        glCullFace(GL_BACK);
        
        
		// Really Nice Perspective Calculations
		glHint(GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST);		

	}
	
	public void Flip()
	{
		F3D.Display.Update();
	}
	
	public void Resize()
	{
		// Setup our viewport.
	    glViewport( 0, 0, F3D.Config.r_display_width, F3D.Config.r_display_height);

	    // change to the projection matrix and set our viewing volume.
	    glMatrixMode( GL_PROJECTION );
	    glLoadIdentity();
	    
	    
	    // Set our perspective
	    gluPerspective( 45.0f, (float)F3D.Config.r_display_width / F3D.Config.r_display_height, 0.1f, 1000.0f );

	    // Make sure we're changing the model view and not the projection
	    glMatrixMode( GL_MODELVIEW );

	    // Reset The View
	    glLoadIdentity();
	}
	
	
	public void Clear(float R, float G, float B, float A)
	{
		glClearColor(R, G, B, A);
	}
	
	public void BeginRender3D()
	{
		
		glLoadIdentity();
	    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);
		
	    
	    if (F3D.Config.use_gl_light) { glEnable(GL_LIGHTING); }

	}
	

	
	public void EndRender3D()
	{
		glColor4f(1,1,1,1);
		
		glClientActiveTexture(GL_TEXTURE0);
		F3D.Textures.DeactivateLayer(0);
		glClientActiveTexture(GL_TEXTURE1);
		F3D.Textures.DeactivateLayer(1);
		glClientActiveTexture(GL_TEXTURE2);
		F3D.Textures.DeactivateLayer(2);
		glClientActiveTexture(GL_TEXTURE3);
		F3D.Textures.DeactivateLayer(3);
		
		F3D.Textures.ActivateLayer(0);
		
		if (F3D.Config.use_gl_light) { glDisable(GL_LIGHTING); }

	}
	
	
	public void BeginRender2D()
	{
	    glMatrixMode(GL_PROJECTION);
	    glPushMatrix();
	    glLoadIdentity();
	    gluOrtho2D(0, F3D.Config.r_display_width, F3D.Config.r_display_height, 0);
	    glMatrixMode(GL_MODELVIEW);
	    glPushMatrix();
	    glLoadIdentity();
	}
	
	
	public void EndRender2D()
	{
	    glMatrixMode(GL_PROJECTION);
	    glPopMatrix();
	    glMatrixMode(GL_MODELVIEW);
	    glPopMatrix();
	    glEnable(GL_DEPTH_TEST);
	    glDisable(GL_BLEND);
	    glDepthMask(true);
	    glColor4f(1,1,1,1);
	}
	
	public void DoubleFace(Boolean enable)
	{
		if (!enable) 
	    {
	        glEnable(GL_CULL_FACE);
	        glCullFace(GL_BACK);
	        glFrontFace(GL_CW);
	    }
	    else
	    {
	        glDisable(GL_CULL_FACE);
	    }
		
	}
	
	public void DrawInfo(int sx,int sy)
	{
		
		F3D.Textures.DeactivateLayer(0);
		F3D.Textures.DeactivateLayer(1);
		F3D.Textures.DeactivateLayer(2);
		F3D.Textures.DeactivateLayer(3);
		
	    
		F3D.Fonts.DrawText("system_font",sx, sy + 13 * 0, "FRAMERATE:",0);
		
	    
		F3D.Fonts.DrawText("system_font",sx, sy + 13 * 1, "FPS          : " + F3D.Timer.GetFPS(),0);
		F3D.Fonts.DrawText("system_font",sx, sy + 13 * 2, "Tick count   : " + F3D.Timer.GetTickCount(),0);
		F3D.Fonts.DrawText("system_font",sx, sy + 13 * 3, "Frame Elapsed: " + F3D.Timer.AppSpeed(),0);
	
	}
}

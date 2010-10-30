//-----------------------------------------------------------------------
// A3D_HUD_Image:
// -----------------------------------------------------------------------
package AGFX.F3D.Hud;

import static org.lwjgl.opengl.GL11.*;
import static org.lwjgl.opengl.GL12.*;


//import org.lwjgl.opengl.GL12;
import org.lwjgl.util.vector.Vector2f;

import AGFX.F3D.F3D;

//-----------------------------------------------------------------------
//A3D_HUD_Image: CLASS 
//-----------------------------------------------------------------------
/**
 * @author AndyGFX
 * 
 */
public class TF3D_HUD_Image extends TF3D_HUD_Gadget
{
	/** HUD image position on screen */
	public Vector2f position;

	/** texture ID from A3D.Textures list */
	public int           texture_id;

	public TF3D_HUD_Image()
	{
		this.HudType = 0;

	}

	// -----------------------------------------------------------------------
	// TA3D_HUD_Image:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Initialize (call this only once before render loop) <BR>
	 * -------------------------------------------------------------------<BR>
	 */
	// -----------------------------------------------------------------------
	public void Initialize()
	{

		if (this.property.Autosize == true)
		{
			this.size.x = F3D.Textures.GetWidth(this.texture_id);
			this.size.y = F3D.Textures.GetHeight(this.texture_id);
		}

	}

	
	// -----------------------------------------------------------------------
	// TA3D_HUD_Image:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Draw HUD image on positionm (x,y) <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param _x
	 *            x position
	 * @param _y
	 *            y position
	 */
	// -----------------------------------------------------------------------
	public void DrawAt(float _x, float _y)
	{
		if (this.visible == true)
		{
			// A3D.gl.glFrontFace(GL10.GL_CW);

			if (this.property.Texture == true)
			{
				F3D.Textures.ActivateLayer(0);
				F3D.Textures.Bind(this.texture_id);
			}

			if (this.property.Blend == true)
			{
				glEnable(GL_BLEND);
				glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
			}

			if (this.property.Clamp == true)
			{
				glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
				glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
			}

			glColor4f(this.color.x, this.color.y, this.color.z, this.color.w);
			this.angle = this.angle + this.transform.rotate * F3D.Timer.AppSpeed();

			this.offset.x = this.offset.x + ((this.transform.scroll.x * F3D.Timer.AppSpeed()));
			this.offset.y = this.offset.y + ((this.transform.scroll.y * F3D.Timer.AppSpeed()));

			F3D.Textures.Begin_TranslateLayer(0, this.origin.x, this.origin.y, this.offset.x, this.offset.y, this.scale.x, this.scale.y, this.angle);

			glPushMatrix();

			glTranslatef(_x - this.shape_origin.x, _y - this.shape_origin.y, 0.0f);
			glRotatef(this.shape_angle, 0.0f, 0.0f, 1.0f);

			F3D.Draw.QuadBySize(_x, _y, this.size.x, this.size.y, 0f);
			
			
			glPopMatrix();

			F3D.Textures.End_TranslateLayer(0);

			if (this.property.Texture == true)
			{
				F3D.Textures.DeactivateLayer(0);
			}

			if (this.property.Blend == true)
			{
				glDisable(GL_BLEND);
			}

			glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
		}
		// A3D.gl.glFrontFace(GL10.GL_CCW);
	}

	// -----------------------------------------------------------------------
	// TA3D_HUD_Image:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Draw HUD image on pre-defined position <BR>
	 * -------------------------------------------------------------------<BR>
	 */
	// -----------------------------------------------------------------------
	public void Draw()
	{
		this.DrawAt(this.position.x, this.position.y);
	}
}

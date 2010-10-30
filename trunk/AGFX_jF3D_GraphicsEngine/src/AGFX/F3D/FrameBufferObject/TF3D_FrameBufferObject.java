/**
 * 
 */
package AGFX.F3D.FrameBufferObject;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;

import org.lwjgl.BufferUtils;
import org.lwjgl.LWJGLException;
import org.lwjgl.opengl.Display;
import org.lwjgl.opengl.EXTFramebufferObject;
import org.lwjgl.opengl.Pbuffer;
import org.lwjgl.opengl.PixelFormat;
import org.newdawn.slick.opengl.Texture;

import static org.lwjgl.opengl.GL11.*;
import static org.lwjgl.opengl.GL30.*;
import static org.lwjgl.util.glu.GLU.*;

import AGFX.F3D.F3D;

/**
 * @author AndyGFX 
 * http://lwjgl.org/forum/index.php/topic,2892.0.html
 */
public class TF3D_FrameBufferObject
{
	private int texture_id;
	private IntBuffer buffer;
	private int width;
	private int height;
	private int FBO_id;

	public TF3D_FrameBufferObject(int w, int h)
	{
		
		this.width = w;
		this.height = h;
		
		// Set up the FBO and the Texture
		buffer = ByteBuffer.allocateDirect(1 * 4).order(ByteOrder.nativeOrder()).asIntBuffer(); 
		EXTFramebufferObject.glGenFramebuffersEXT(buffer); // generate
		this.FBO_id = buffer.get();

		
	    
	    glEnable(GL_TEXTURE_2D);
	    // Create shared texture
	    IntBuffer texture_buffer = ByteBuffer.allocateDirect(4).order(ByteOrder.nativeOrder()).asIntBuffer();
	    glGenTextures(texture_buffer);
	    this.texture_id = texture_buffer.get(0);
	    
	    glBindTexture(GL_TEXTURE_2D, this.texture_id);
	    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, width, height, 0, GL_RGBA, GL_UNSIGNED_BYTE, BufferUtils.createIntBuffer(width * height * 4));
	    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP);
	    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP);
	    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
	    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

	    EXTFramebufferObject.glBindFramebufferEXT(EXTFramebufferObject.GL_FRAMEBUFFER_EXT, this.FBO_id);
		EXTFramebufferObject.glFramebufferTexture2DEXT(EXTFramebufferObject.GL_FRAMEBUFFER_EXT, EXTFramebufferObject.GL_COLOR_ATTACHMENT0_EXT, GL_TEXTURE_2D, this.texture_id, 0);
		glBindTexture(GL_TEXTURE_2D, 0);
	}

	public void BeginRender()
	{
		
		//Start drawing to the FBO
		EXTFramebufferObject.glBindFramebufferEXT( EXTFramebufferObject.GL_FRAMEBUFFER_EXT, this.FBO_id );

		glPushAttrib(GL_VIEWPORT_BIT);
		glViewport(0,0,this.width, this.height);
	}

	public void EndRender()
	{
		glPopAttrib();
		EXTFramebufferObject.glBindFramebufferEXT( EXTFramebufferObject.GL_FRAMEBUFFER_EXT, 0);
	}

	public void Bind()
	{
		F3D.Textures.DeactivateLayers();
		F3D.Textures.ActivateLayer(0);
		glEnable(GL_TEXTURE_2D);
		glBindTexture(GL_TEXTURE_2D,this.texture_id);
	}
}

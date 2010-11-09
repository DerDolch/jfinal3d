/**
 * 
 */
package AGFX.F3D.FrameBufferObject;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.EXTFramebufferObject;

import static org.lwjgl.opengl.GL11.*;
import static org.lwjgl.opengl.GL14.*;
import static org.lwjgl.opengl.GL20.*;
import static org.lwjgl.opengl.GL30.*;
import static org.lwjgl.opengl.GL31.*;


import AGFX.F3D.F3D;

/**
 * @author AndyGFX 
 * http://lwjgl.org/forum/index.php/topic,2892.0.html
 */
public class TF3D_FrameBufferObject
{
	private int texture_id;
	private int depth_id;	
	private int width;
	private int height;
	private int FBO_id;
	private int RBO_id;
	public String name;
	private IntBuffer buffer;
	
	
	public TF3D_FrameBufferObject(String _name,int w, int h, Boolean depth)
	{
		this.name = _name;
		this.width = w;
		this.height = h;
		
		// Set up the FBO and the Texture
		buffer = ByteBuffer.allocateDirect(1 * 4).order(ByteOrder.nativeOrder()).asIntBuffer(); 
		glGenFramebuffers(buffer); // generate
		this.FBO_id = buffer.get();
		
		// RENDER BUFFER
		
		if (depth)
		{
    		buffer = BufferUtils.createIntBuffer(1); 
    		glGenRenderbuffers(buffer);
    		this.RBO_id = buffer.get();
		}
		
	    glEnable(GL_TEXTURE_2D);
	    
	    // Create shared texture
	    IntBuffer texture_buffer = ByteBuffer.allocateDirect(4).order(ByteOrder.nativeOrder()).asIntBuffer();
	    glGenTextures(texture_buffer);
	    this.texture_id = texture_buffer.get(0);
	    
	    glBindTexture(GL_TEXTURE_2D, this.texture_id);
	    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, width, height, 0, GL_RGBA, GL_UNSIGNED_BYTE, (IntBuffer)null);
	    //glTexImage2D(GL_TEXTURE_2D, 0, GL_INTENSITY, width, height, 0, GL_LUMINANCE, GL_UNSIGNED_BYTE, BufferUtils.createIntBuffer(width * height * 4));
	    
	    //glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP);
	    //glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP);
	    
	    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
	    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
	    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
	    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

	    glBindFramebuffer(GL_FRAMEBUFFER, this.FBO_id);
	    glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, this.texture_id, 0);
	    
	    
	    // attach renderbufferto framebufferdepth buffer
	    if (depth)
	    {
    	    glBindRenderbuffer(GL_RENDERBUFFER, this.RBO_id);
    	    glRenderbufferStorage(GL_RENDERBUFFER,GL_DEPTH_COMPONENT24, this.width, this.height);
    	    glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, GL_RENDERBUFFER, this.RBO_id);
	    }
	    
	    // CLOSE TETXURE and BUFFER
	    glBindFramebuffer(GL_FRAMEBUFFER, 0);	    
		glBindTexture(GL_TEXTURE_2D, 0);
	    
	}

	public int GetTexture()
	{
		return this.texture_id;
	}
	
	public void BeginRender()
	{
		
		
		glBindFramebuffer( GL_FRAMEBUFFER, this.FBO_id );
		
		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
		  
		glPushAttrib(GL_VIEWPORT_BIT);
		glViewport(0,0,this.width, this.height);
		
		
	}

	public void EndRender(Boolean frame_off, Boolean render_off)
	{
		glPopAttrib();
		if (frame_off) glBindFramebuffer( GL_FRAMEBUFFER, 0);
		if (render_off) glBindRenderbuffer(GL_RENDERBUFFER, 0);
	}

	public void Bind()
	{
		
		F3D.Textures.DeactivateLayers();
		F3D.Textures.ActivateLayer(0);
        
		glEnable(GL_TEXTURE_2D);
		glBindTexture(GL_TEXTURE_2D,this.texture_id);
		
	}
}

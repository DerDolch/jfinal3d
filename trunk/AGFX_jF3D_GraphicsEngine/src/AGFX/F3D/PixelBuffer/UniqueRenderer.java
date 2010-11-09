/*
 * Copyright (c) 2002-2008 LWJGL Project
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met:
 *
 * * Redistributions of source code must retain the above copyright
 *   notice, this list of conditions and the following disclaimer.
 *
 * * Redistributions in binary form must reproduce the above copyright
 *   notice, this list of conditions and the following disclaimer in the
 *   documentation and/or other materials provided with the distribution.
 *
 * * Neither the name of 'LWJGL' nor the names of
 *   its contributors may be used to endorse or promote products derived
 *   from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
 * TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
package AGFX.F3D.PixelBuffer;

import org.lwjgl.LWJGLException;
import org.lwjgl.opengl.Display;
import org.lwjgl.opengl.Pbuffer;
import org.lwjgl.opengl.PixelFormat;
import org.lwjgl.opengl.RenderTexture;

import static org.lwjgl.opengl.GL11.*;

public final class UniqueRenderer extends TextureRenderer
{

	public UniqueRenderer(final int width, final int height, final int texID)
	{
		super(width, height, texID);
	}
	/*
	protected Pbuffer init(final int width, final int height, final int texID)
	{
		Pbuffer pbuffer = null;

		try
		{
			pbuffer = new Pbuffer(width, height, new PixelFormat(16, 0, 0, 0, 0), null, null);

			// Initialise state of the pbuffer context.
			pbuffer.makeCurrent();

			PbufferTest.initGLState(width, height, 0.5f);
			glBindTexture(GL_TEXTURE_2D, texID);

			Display.makeCurrent();
		} catch (LWJGLException e)
		{
			e.printStackTrace();
			System.exit(-1);
		}

		return pbuffer;
	}

	public void updateTexture()
	{
		// Copy the pbuffer contents to the texture.
		glCopyTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, 0, 0, width, height, 0);
	}
*/
	// Initialize texture renderer
	protected Pbuffer init(final int width, final int height, final int texID)
	{
		Pbuffer pbuffer = null;

		try
		{
			final RenderTexture rt = new RenderTexture(true, false, false, false, RenderTexture.RENDER_TEXTURE_2D, 0);
			pbuffer = new Pbuffer(width, height, new PixelFormat(16, 0, 0, 0, 0), rt, null);

			// Initialise state of the pbuffer context.
			pbuffer.makeCurrent();

			PbufferTest.initGLState(width, height, 0.5f);
			glBindTexture(GL_TEXTURE_2D, texID);
			glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
		    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
		    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
		    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
		    
			Display.makeCurrent();
		} catch (LWJGLException e)
		{
			e.printStackTrace();
			System.exit(-1);
		}

		return pbuffer;
	}

	public void enable()
	{
		super.enable();

		// Put the renderer contents to the texture
		pbuffer.releaseTexImage(Pbuffer.FRONT_LEFT_BUFFER);
	}

	public void updateTexture()
	{
		// Bind the texture after rendering.
		pbuffer.bindTexImage(Pbuffer.FRONT_LEFT_BUFFER);
	}

}
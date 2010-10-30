package AGFX.F3D.Texture;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.EXTTextureFilterAnisotropic;
import org.lwjgl.opengl.GL11;
import org.newdawn.slick.opengl.Texture;
import org.newdawn.slick.opengl.TextureLoader;
import org.lwjgl.util.glu.MipMap;
import AGFX.F3D.F3D;
import AGFX.F3D.FrameBufferObject.TF3D_FrameBufferObject;

public class TF3D_Texture
{

	private Texture texture;
	private TF3D_FrameBufferObject	fbo_texture;
	public String name = "noname";
	public int width = 0;
	public int height = 0;
	
	
	public TF3D_Texture(String _name)
	{
		F3D.Log.info("TF3D_Texture", "Create - constructor");
		this.name = _name;
		this.texture = null;
		this.fbo_texture = null;
	}

	
	public void Load(String filename, Boolean mipmap)
	{
		
		F3D.Log.info("TF3D_Texture", "Loading ... "+filename);
		filename = F3D.AbstractFiles.GetFullPath(filename);
		String FMT = "PNG";
		
		try
		{			
			if (filename.contains(".png"))
			{
				FMT = "PNG";
			}
			if (filename.contains(".jpg"))
			{
				FMT = "JPG";
			}
			
			if (filename.contains(".gif"))
			{
				FMT = "TGA";
			}
			if (filename.contains(".tga"))
			{
				FMT = "TGA";
			}

			this.texture = this.LoadMipmap(FMT,filename,mipmap);
					
			this.width = this.texture.getImageWidth();
			this.height = this.texture.getImageHeight();
			
			
		} catch (FileNotFoundException e)
		{
			e.printStackTrace();
			F3D.Log.error("TF3D_Texture.Load(...)", "Missing file: " + filename);
		} catch (IOException e)
		{
			e.printStackTrace();
		}
	}

	private Texture LoadMipmap(String FMT,String filename, Boolean mipmap) throws IOException 
	{
        
		
        Texture texture=null;
        
        texture = TextureLoader.getTexture(FMT, new FileInputStream(filename));
        
        texture.bind();
        int width = (int)texture.getImageWidth();
        int height = (int)texture.getImageHeight();
        
        byte[] texbytes = texture.getTextureData();
        int components = texbytes.length / (width*height);
       
        ByteBuffer texdata = BufferUtils.createByteBuffer(texbytes.length);
        texdata.put(texbytes);
        texdata.rewind();
        
        
        if (mipmap)
        {
        	MipMap.gluBuild2DMipmaps(GL11.GL_TEXTURE_2D, components, width, height, components==3 ? GL11.GL_RGB : GL11.GL_RGBA, GL11.GL_UNSIGNED_BYTE,texdata);
        	GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_MIN_FILTER, GL11.GL_LINEAR_MIPMAP_LINEAR);
        }
        else
        {
        	GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_MIN_FILTER, GL11.GL_LINEAR);
        }
        
        GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_MAG_FILTER, GL11.GL_LINEAR);
        
        if (F3D.Config.r_anisotropy_filtering>0)
        {
        	GL11.glTexParameteri(GL11.GL_TEXTURE_2D, EXTTextureFilterAnisotropic.GL_TEXTURE_MAX_ANISOTROPY_EXT, F3D.Config.r_anisotropy_filtering);
        }
       
        
        return texture;
}
	// -----------------------------------------------------------------------
	// TA3D_Texture:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Bind Texture <BR>
	 * -------------------------------------------------------------------<BR>
	 */
	// -----------------------------------------------------------------------
	public void Bind()
	{
		if (this.texture!=null)
		{
			this.texture.bind();
		}

		if (this.fbo_texture!=null)
		{
			this.fbo_texture.Bind();
		}
	}

	// -----------------------------------------------------------------------
	// TA3D_Texture:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Get OpenGL ES tetxure <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @return OGL texture ID
	 */
	// -----------------------------------------------------------------------
	public Texture Get()
	{
		return this.texture;
	}

	public void CreateFromFBO(TF3D_FrameBufferObject fbo)
	{
		this.fbo_texture = fbo;
	}
}

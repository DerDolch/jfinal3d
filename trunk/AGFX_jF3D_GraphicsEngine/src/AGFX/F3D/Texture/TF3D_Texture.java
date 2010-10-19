package AGFX.F3D.Texture;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

import org.newdawn.slick.opengl.Texture;
import org.newdawn.slick.opengl.TextureLoader;

import AGFX.F3D.F3D;

public class TF3D_Texture
{

	private Texture texture;
	public String name = "noname";
	public int width = 0;
	public int height = 0;
	
	
	public TF3D_Texture(String _name)
	{
		F3D.Log.info("TF3D_Texture", "Create - constructor");
		this.name = _name;
	}

	public void Load(String filename)
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

			this.texture = TextureLoader.getTexture(FMT, new FileInputStream(filename));
			this.width = this.texture.getImageWidth();
			this.height = this.texture.getImageHeight();
			
			
		} catch (FileNotFoundException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
			F3D.Log.error("TF3D_Texture.Load(...)", "Missing file: " + filename);
		} catch (IOException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
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
		this.texture.bind();
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

}

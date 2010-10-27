package AGFX.F3D.Serialize;

/**
 * @author Baskervil
 *
 */
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

import AGFX.F3D.F3D;
import AGFX.F3D.Mesh.TF3D_MeshData;

public class TF3D_Store
{

	public TF3D_Store()
	{

	}

	public static int saveObj(TF3D_MeshData obj,String filename)
	{
		filename = F3D.AbstractFiles.GetFullPath(filename);
		filename = filename.replace("a3da", "a3db");
		filename = filename.replace("A3DA", "A3DB");
		try
		{
			FileOutputStream out = new FileOutputStream(filename);
			ObjectOutputStream s = new ObjectOutputStream(out);
			s.writeObject(obj);
			s.flush();
			s.close();
			return 0;
		} catch (Exception e)
		{
			e.printStackTrace();
			return 1;
		}

	}

	public static TF3D_MeshData readObj(String filename)
	{
		TF3D_MeshData ret = null;
		FileInputStream in = null;
		try
		{
			if (F3D.Config.io_preload_source==F3D.PRELOAD_FROM_JAR)
			{
				in = (FileInputStream) ClassLoader.getSystemResource(F3D.AbstractFiles.GetFullPath(filename)).openStream();
			}
			else
			{
				in = new FileInputStream(F3D.AbstractFiles.GetFullPath(filename));
			}
			ObjectInputStream s = new ObjectInputStream(in);
			ret = (TF3D_MeshData) s.readObject();
			return ret;
		} catch (Exception e)
		{
			e.printStackTrace();
			return ret;
		}

	}
}

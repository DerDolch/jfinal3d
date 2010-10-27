package AGFX.F3D.Utils;

import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.CharacterIterator;
import java.text.StringCharacterIterator;
import java.util.ArrayList;

import AGFX.F3D.F3D;

public class TF3D_AbstractFiles
{
	public ArrayList<String>	Dir;
	static final int			MAX_DEPTH	= 20;

	
	public TF3D_AbstractFiles()	
	{
		this.Dir = new ArrayList<String>();

		// preload ABSTRACT FILED files from FOLDER
		if (F3D.Config.io_preload_source==F3D.PRELOAD_FROM_FOLDER)
		{
			File root = new File(F3D.Config.io_preload_folder);
			if (root != null && root.isDirectory())
			{
				listRecursively(root, 0);
			} else
			{
				System.out.println("Not a directory: " + root);
			}
			
			this.Save(F3D.Config.io_preload_folder+"/"+F3D.Config.io_preload_source_name);
		}
		
		// preload ABSTRACT FILED files from FILE
		if (F3D.Config.io_preload_source==F3D.PRELOAD_FROM_FILE)
		{
			try
			{
				this.Load(new FileInputStream(F3D.Config.io_preload_folder+"/"+F3D.Config.io_preload_source_name));
			} catch (IOException e)
			{
				e.printStackTrace();
			}
		}
		
		// preload ABSTRACT FILED files from FILE in JAR
		if (F3D.Config.io_preload_source==F3D.PRELOAD_FROM_JAR)
		{
			try
			{
				this.Load(ClassLoader.getSystemResource(F3D.Config.io_preload_folder+"/"+F3D.Config.io_preload_source_name).openStream());
			} catch (IOException e)
			{
				e.printStackTrace();
			}
		}
	}

	// ==========================================================
	// listRecursively
	public void listRecursively(File fdir, int depth)
	{

		String replaced = TF3D_AbstractFiles.backlashReplace(fdir
				.getAbsolutePath());
		// String replaced = fdir.getAbsolutePath();

		if (replaced.contains(".svn"))
		{
			// IGNORE
		} else
		{
			this.Dir.add(replaced);
			if (F3D.ABSTARCTFILE_LOG)
			{

				F3D.Log.info("TF3D_AbstractFiles", fdir.getAbsolutePath());
			}
		}

		if (fdir.isDirectory() && depth < MAX_DEPTH)
		{
			for (File f : fdir.listFiles())
			{
				listRecursively(f, depth + 1);
			}
		}
	}

	public static String backlashReplace(String myStr)
	{
		final StringBuilder result = new StringBuilder();
		final StringCharacterIterator iterator = new StringCharacterIterator(
				myStr);
		char character = iterator.current();
		while (character != CharacterIterator.DONE)
		{

			if (character == '\\')
			{
				result.append("/");
			} else
			{
				result.append(character);
			}

			character = iterator.next();
		}
		return result.toString();
	}

	public boolean ExistFile(String file)
	{
		boolean res = false;

		file = file.replace("abstract::", "");
		for (int i = 0; i < this.Dir.size(); i++)
		{
			if (this.Dir.get(i).contains(file))
			{
				res = true;
			}
		}

		return res;
	}

	public String GetFullPath(String file)
	{
		String res = null;

		if (file.contains("abstract::"))
		{
			file = file.replace("abstract::", "");

			for (int i = 0; i < this.Dir.size(); i++)
			{
				if (this.Dir.get(i).contains(file))
				{
					res = this.Dir.get(i);
				}
			}
		} else
		{
			res = file;
		}

		return res;
	}

	public void Save(String name)
	{
		FileWriter f;
		PrintWriter dos = null;

		try
		{
			f = new FileWriter(name);
			dos = new PrintWriter(f);
			for (int i = 0; i < this.Dir.size(); i++)
			{
				String relative_path = this.Dir.get(i);
				int id = relative_path.indexOf("media");
				relative_path = relative_path.substring(id,relative_path.length());
				//relative_path=relative_path+"\n";
				dos.println(relative_path);
			}

			dos.close();
		} catch (IOException e1)
		{
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		 
		

	

	}

	public void Load(InputStream is)
	{
		// asset can't be more than 2 gigs.
		int size;
		try
		{
			size = is.available();
			// Read the entire asset into a local byte buffer.
			byte[] buffer = new byte[size];
			is.read(buffer);
			is.close();

			// Convert the buffer into a string.
			String[] text = new String(buffer).split("\n");

			this.Dir = new ArrayList<String>();

			for (int i = 0; i < text.length; i++)
			{
				text[i]=text[i].replaceAll("\n", "");
				text[i]=text[i].replaceAll("\r", "");
				this.Dir.add(text[i]);
				F3D.Log.info("Abstarct", text[i]);
			}
		} catch (IOException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}

package AGFX.F3D.Utils;

import java.io.File;
import java.text.CharacterIterator;
import java.text.StringCharacterIterator;
import java.util.ArrayList;

import AGFX.F3D.F3D;

public class TF3D_AbstractFiles
{
	public ArrayList<String> Dir;
	static final int MAX_DEPTH = 20;

	public TF3D_AbstractFiles()
	{
		this.Dir = new ArrayList<String>();

		File root = new File(F3D.Config.io_preload_folder);
		if (root != null && root.isDirectory())
		{
			listRecursively(root, 0);
		} else
		{
			System.out.println("Not a directory: " + root);
		}

	}

	// ==========================================================
	// listRecursively
	public void listRecursively(File fdir, int depth)
	{
		
		
		
		String replaced = TF3D_AbstractFiles.backlashReplace(fdir.getAbsolutePath());
		//String replaced = fdir.getAbsolutePath();
		
		if (replaced.contains(".svn"))
		{
			// IGNORE
		}
		else
		{
			this.Dir.add(  replaced);
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
}

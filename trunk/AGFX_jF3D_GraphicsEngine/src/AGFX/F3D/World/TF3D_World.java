/**
 * 
 */
package AGFX.F3D.World;

import java.util.ArrayList;

import javax.vecmath.Vector3f;

import AGFX.F3D.F3D;
import AGFX.F3D.Billboard.TF3D_Billboard;
import AGFX.F3D.Entity.TF3D_Entity;

/**
 * @author AndyGFX
 * 
 */
public class TF3D_World
{
	public static ArrayList<TF3D_Entity> entities;

	// -----------------------------------------------------------------------
	// TF3D_World:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * COnstructor <BR>
	 * -------------------------------------------------------------------<BR>
	 */
	// -----------------------------------------------------------------------
	public TF3D_World()
	{
		F3D.Log.info("TF3D_World", "TF3D_World: constructor");
		TF3D_World.entities = new ArrayList<TF3D_Entity>();
		F3D.Log.info("TF3D_World", "TF3D_World: ... done");
	}

	// -----------------------------------------------------------------------
	// TF3D_World:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Update world. Call Update in all entities before Render <BR>
	 * -------------------------------------------------------------------<BR>
	 */
	// -----------------------------------------------------------------------
	public void Update()
	{
		for (int i = 0; i < TF3D_World.entities.size(); i++)
		{
			if (TF3D_World.entities.get(i).parent == null)
			{
				TF3D_World.entities.get(i).Update();

			}
		}

	}

	// -----------------------------------------------------------------------
	// TF3D_World:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Render all entities <BR>
	 * -------------------------------------------------------------------<BR>
	 */
	// -----------------------------------------------------------------------
	public void Render()
	{

		F3D.Cameras.RenderSky();

		for (int i = 0; i < TF3D_World.entities.size(); i++)
		{
			if (TF3D_World.entities.get(i).parent == null)
			{
				if (TF3D_World.entities.get(i).classname != F3D.CLASS_CAMERA)
				{
					TF3D_World.entities.get(i).Render();
				}
			}
		}

	}

	// -----------------------------------------------------------------------
	// TF3D_World:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Add Entity to world <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param e
	 *            = entity
	 */
	// -----------------------------------------------------------------------
	public void Add(TF3D_Entity e)
	{
		TF3D_World.entities.add(e);
	}

	// -----------------------------------------------------------------------
	// TF3D_World:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Remove entity from world <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param e
	 *            = entity
	 */
	// -----------------------------------------------------------------------
	public void Remove(TF3D_Entity e)
	{
		if (e.childs.size() > 0)
		{
			e.ClearChild();
		}
		TF3D_World.entities.remove(e);
	}

	public void Destroy()
	{
		for (int i = 0; i < TF3D_World.entities.size(); i++)
		{
			TF3D_World.entities.get(i).Destroy();
		}
	}

	public TF3D_Billboard CreateSprite(String _name, Vector3f pos, Vector3f dir, float sx, float sy, String mat, int type)
	{
		TF3D_Billboard sprite = new TF3D_Billboard();

		sprite.mode = type;
		sprite.name = _name;
		sprite.enable = true;
		sprite.SetScale(sx, sy, 0.0f);
		sprite.material_id = F3D.Surfaces.FindByName(mat);
		sprite.SetPosition(pos);
		sprite.Dir.set(dir);

		F3D.Log.info("TF3D_World", "Create Sprite: '" + sprite.name + "'");

		return sprite;

	}
}

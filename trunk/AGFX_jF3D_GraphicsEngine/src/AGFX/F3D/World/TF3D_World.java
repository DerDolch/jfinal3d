/**
 * 
 */
package AGFX.F3D.World;

import java.util.ArrayList;
import AGFX.F3D.F3D;
import AGFX.F3D.Entity.TF3D_Entity;

/**
 * @author AndyGFX
 * 
 */
public class TF3D_World
{
	public String                 name;

	public ArrayList<TF3D_Entity> entities;

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
	public TF3D_World(String world_name)
	{
		F3D.Log.info("TF3D_World", "TF3D_World: constructor");
		this.entities = new ArrayList<TF3D_Entity>();
		F3D.Log.info("TF3D_World", "TF3D_World: ... done");
		this.name = world_name;
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
		for (int i = 0; i < this.entities.size(); i++)
		{
			if (this.entities.get(i).parent == null)
			{
				if (this.entities.get(i).classname != F3D.CLASS_CAMERA)
				{
					this.entities.get(i).Update();
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
	 * Render all entities <BR>
	 * -------------------------------------------------------------------<BR>
	 */
	// -----------------------------------------------------------------------
	public void Render()
	{

		// TODO REWRITE SKYBOX RENDERING !!!
		//F3D.Cameras.RenderSky();
		

		for (int i = 0; i < this.entities.size(); i++)
		{
			if (this.entities.get(i).parent == null)
			{
				if (this.entities.get(i).classname != F3D.CLASS_CAMERA)
				{
					this.entities.get(i).Render();
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
		this.entities.add(e);
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
		this.entities.remove(e);
	}

	public void Destroy()
	{
		for (int i = 0; i < this.entities.size(); i++)
		{
			this.entities.get(i).Destroy();
		}
	}

}

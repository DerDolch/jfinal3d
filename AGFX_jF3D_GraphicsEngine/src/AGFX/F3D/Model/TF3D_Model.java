/**
 * 
 */
package AGFX.F3D.Model;

import javax.vecmath.Vector3f;

import AGFX.F3D.F3D;
import AGFX.F3D.Entity.TF3D_Entity;
import static org.lwjgl.opengl.GL11.*;

/**
 * @author AndyGFX
 * 
 */

public class TF3D_Model extends TF3D_Entity
{

	private int mesh_id    = -1;
	private int surface_id = -1;

	public TF3D_Model(String _name)
	{
		this.classname = F3D.CLASS_MODEL;
		this.name = _name;
	}

	public void AssignMesh(int id)
	{
		this.mesh_id = id;
		this.BBOX.CalcFromMesh(this.mesh_id);
	}

	public void AssignMesh(String name)
	{
		this.mesh_id = F3D.Meshes.FindByName(name);
		this.BBOX.CalcFromMesh(this.mesh_id);
	}

	public void SetSurface(String name)
	{
		this.surface_id = F3D.Surfaces.FindByName(name);

	}

	// -----------------------------------------------------------------------
	// TA3D_Mesh:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Render Mesh <BR>
	 * -------------------------------------------------------------------<BR>
	 */
	// -----------------------------------------------------------------------

	public void Render()
	{
		int mid;

		if (this.IsEnabled())
		{
			if (this.IsVisible())
			{
				if (this.surface_id < 0)
				{
					mid = F3D.Meshes.items.get(this.mesh_id).data.material_id;
				} else
				{
					mid = this.surface_id;
				}

				if (mid >= 0)
				{
					F3D.Surfaces.ApplyMaterial(mid);
				}

				glPushMatrix();

				glScalef(this.GetScale().x, this.GetScale().y, this.GetScale().z);
				glTranslatef(this.GetPosition().x, this.GetPosition().y, this.GetPosition().z);

				glRotatef(this.GetRotation().x, 1.0f, 0.0f, 0.0f);
				glRotatef(this.GetRotation().y, 0.0f, 1.0f, 0.0f);
				glRotatef(this.GetRotation().z, 0.0f, 0.0f, 1.0f);

				if (this.mesh_id >= 0)
				{
					F3D.Meshes.items.get(this.mesh_id).Render();
				}

				// render childs
				for (int i = 0; i < this.childs.size(); i++)
				{
					this.childs.get(i).Render();
				}

				glScalef(1, 1, 1);
				glPopMatrix();
			}
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see AGFX.F3D.Entity.TF3D_Entity#Update()
	 */
	@Override
	public void Update()
	{
	}

	@Override
	public void Destroy()
	{
	}

}

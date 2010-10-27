/**
 * 
 */
package AGFX.F3D.Model;

import javax.vecmath.Vector3f;

import AGFX.F3D.F3D;
import AGFX.F3D.Entity.TF3D_Entity;
import AGFX.F3D.Mesh.TF3D_Mesh;
import static org.lwjgl.opengl.GL11.*;

/**
 * @author AndyGFX
 * 
 */

public class TF3D_Model extends TF3D_Entity
{

	private int		mesh_id			= -1;
	private int		surface_id		= -1; // TODO rewrite surface substitution
	private Boolean	MultiSurface	= false;

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

	public void Render()
	{
		if (this.MultiSurface)
		{
			this.Render_with_MultiSurface_on();
		} else
		{
			this.Render_with_MultiSurface_off();
		}
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

	private void Render_with_MultiSurface_off()
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

				glScalef(this.GetScale().x, this.GetScale().y,
						this.GetScale().z);
				glTranslatef(this.GetPosition().x, this.GetPosition().y,
						this.GetPosition().z);

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

	private void Render_with_MultiSurface_on()
	{
		int mid;

		if (this.IsEnabled())
		{
			if (this.IsVisible())
			{
				TF3D_Mesh mesh = F3D.Meshes.items.get(this.mesh_id);

				mesh.vbo.Bind();

				for (int i = 0; i < mesh.IndicesGroup.items.size(); i++)
				{
					mid = mesh.IndicesGroup.items.get(i).material_id;

					if (mid >= 0)
					{
						F3D.Surfaces.ApplyMaterial(mid);
					}

					glPushMatrix();

					glScalef(this.GetScale().x, this.GetScale().y,
							this.GetScale().z);
					glTranslatef(this.GetPosition().x, this.GetPosition().y,
							this.GetPosition().z);

					glRotatef(this.GetRotation().x, 1.0f, 0.0f, 0.0f);
					glRotatef(this.GetRotation().y, 0.0f, 1.0f, 0.0f);
					glRotatef(this.GetRotation().z, 0.0f, 0.0f, 1.0f);

					mesh.Render(i);

					glScalef(1, 1, 1);
					glPopMatrix();
				}

				mesh.vbo.UnBind();
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

	/**
	 * @param multiSurafce
	 *            the multiSurafce to set
	 */
	public void setMultiSurafce(Boolean multiSurafce)
	{
		this.MultiSurface = multiSurafce;
	}

	/**
	 * @return the multiSurafce
	 */
	public Boolean getMultiSurafce()
	{
		return MultiSurface;
	}

}

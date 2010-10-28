/**
 * 
 */
package AGFX.F3D.Body;

import java.util.ArrayList;

import javax.vecmath.Vector3f;

import AGFX.F3D.F3D;
import AGFX.F3D.Entity.TF3D_Entity;
import AGFX.F3D.Mesh.TF3D_Mesh;
import AGFX.F3D.Physics.TF3D_PhysicObject;
import AGFX.F3D.Surface.TF3D_SurfaceSubstItem;

import static org.lwjgl.opengl.GL11.*;

/**
 * @author AndyGFX sssss
 */

public class TF3D_Body extends TF3D_Entity
{
	private int									mesh_id	= -1;
	private ArrayList<TF3D_SurfaceSubstItem>	surfaces;

	public TF3D_PhysicObject					PhysicObject;

	// -----------------------------------------------------------------------
	// TF3D_Body:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Create Body <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param _name
	 *            - body name
	 */
	// -----------------------------------------------------------------------
	public TF3D_Body(String _name)
	{
		this.classname = F3D.CLASS_MODEL;
		this.name = _name;
	}

	// -----------------------------------------------------------------------
	// TF3D_Body:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Create rigid body <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param shapemode
	 *            - shape type
	 * @param mass
	 *            - mass of body
	 */
	// -----------------------------------------------------------------------
	public void CreateRigidBody(int shapemode, float mass)
	{

		this.start_position = (Vector3f) this.GetPosition().clone();
		this.start_rotation = (Vector3f) this.GetRotation().clone();

		if (!F3D.Config.use_physics)
		{
			F3D.Log.error(
					"TF3D_Body",
					"You can't create rigidbody when Bullet physics is disabled in Config.use_physics !\n Note: Use TF3D_Model instead TF3D_Body, when you don't use Bullet physics on Model.");
		}

		this.PhysicObject = new TF3D_PhysicObject();

		Vector3f rescaled = new Vector3f();
		rescaled.x = this.BBOX.size.x * this.GetScale().x;
		rescaled.y = this.BBOX.size.y * this.GetScale().y;
		rescaled.z = this.BBOX.size.z * this.GetScale().z;

		this.BBOX.size.set(rescaled);

		if ((shapemode == F3D.BULLET_SHAPE_CONVEXHULL)
				| (shapemode == F3D.BULLET_SHAPE_TRIMESH))
		{
			this.PhysicObject.Create(shapemode, mass, this.GetPosition(),
					this.GetRotation(), rescaled,
					F3D.Meshes.items.get(this.mesh_id));
		} else
		{
			this.PhysicObject.Create(shapemode, mass, this.GetPosition(),
					this.GetRotation(), rescaled);
		}

		this.PhysicObject.RigidBody.setUserPointer((Object) this);

	}

	// -----------------------------------------------------------------------
	// TF3D_Body:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Assign Mesh to Body by ID <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param id
	 *            - mesh id
	 */
	// -----------------------------------------------------------------------
	public void AssignMesh(int id)
	{
		if (id >= 0)
		{
			this.mesh_id = id;
			this.BBOX.CalcFromMesh(this.mesh_id);
			F3D.Log.info("TF3D_Body",
					"Assigned mesh = '" + F3D.Meshes.Get(this.mesh_id).name
							+ "'");
			this.ReadAssignedSurfaces();

		} else
		{
			F3D.Log.error("TF3D_Body",
					"AssignMesh() : index of assigned MeshName is -1 (Mesh name doesn't exist.)");
		}
	}

	// -----------------------------------------------------------------------
	// TF3D_Body:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Assign Mesh to Body by name <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param meshname
	 *            - mesh name
	 */
	// -----------------------------------------------------------------------
	public void AssignMesh(String meshname)
	{
		int id = F3D.Meshes.FindByName(meshname);

		if (id >= 0)
		{
			this.mesh_id = id;
			this.BBOX.CalcFromMesh(this.mesh_id);
			F3D.Log.info("TF3D_Body", "Assigned mesh = '" + name + "'");

			this.ReadAssignedSurfaces();
		} else
		{
			F3D.Log.error("TF3D_Body",
					"AssignMesh() : index of assigned MeshName is -1 (Mesh '"
							+ meshname + "' doesn't exist.)");
		}
	}

	private void ReadAssignedSurfaces()
	{
		this.surfaces = new ArrayList<TF3D_SurfaceSubstItem>();

		TF3D_Mesh mesh = F3D.Meshes.items.get(this.mesh_id);

		for (int i = 0; i < mesh.IndicesGroup.items.size(); i++)
		{
			String name = mesh.IndicesGroup.items.get(i).material_name;
			int id = mesh.IndicesGroup.items.get(i).material_id;

			TF3D_SurfaceSubstItem sitem = new TF3D_SurfaceSubstItem(name, id);
			this.surfaces.add(sitem);

			F3D.Log.info("TF3D_Body", "Assigned surface = '" + name + "'");
		}
	}

	// -----------------------------------------------------------------------
	// TF3D_Body:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Change surface material to user defined (assigned material to mesh is
	 * ignored) <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param old_surface
	 *            - current surface name
	 * @param new_surface
	 *            - new surface name
	 */
	// -----------------------------------------------------------------------
	public void ChangeSurface(String old_surface, String new_surface)
	{
		for (int i = 0; i < this.surfaces.size(); i++)
		{
			if (this.surfaces.get(i).name.equals(old_surface))
			{
				this.surfaces.get(i).ChangeTo(new_surface);
			}
		}
	}

	/*
	 * public void Render() { if (this.MultiSurface) {
	 * this.Render_with_MultiSurface_on(); } else {
	 * this.Render_with_MultiSurface_off(); } }
	 */
	// -----------------------------------------------------------------------
	// TF3D_Body:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Render Physic Body without MultiSurfaces<BR>
	 * -------------------------------------------------------------------<BR>
	 */
	// -----------------------------------------------------------------------
	/*
	 * private void Render_with_MultiSurface_off() { int mid;
	 * 
	 * if (this.IsEnabled()) {
	 * 
	 * if (this.IsVisible()) { mid =
	 * F3D.Meshes.items.get(this.mesh_id).data.material_id;
	 * 
	 * if (mid >= 0) { F3D.Surfaces.ApplyMaterial(mid); }
	 * 
	 * if (this.mesh_id >= 0) { glPushMatrix();
	 * glMultMatrix(this.PhysicObject.transformMatrixBuffer);
	 * glScalef(this.GetScale().x, this.GetScale().y, this.GetScale().z);
	 * F3D.Meshes.items.get(this.mesh_id).Render(); glScalef(1, 1, 1);
	 * glPopMatrix(); }
	 * 
	 * }
	 * 
	 * } }
	 */
	// -----------------------------------------------------------------------
	// TF3D_Body:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Render Physic Body without MultiSurfaces<BR>
	 * -------------------------------------------------------------------<BR>
	 */
	// -----------------------------------------------------------------------

	// private void Render_with_MultiSurface_on()
	public void Render()
	{
		int mid;

		if (this.IsEnabled())
		{

			if (this.IsVisible())
			{
				TF3D_Mesh mesh = F3D.Meshes.items.get(this.mesh_id);

				mesh.vbo.Bind();

				for (int i = 0; i < this.surfaces.size(); i++)
				{
					mid = this.surfaces.get(i).id;

					if (mid >= 0)
					{
						F3D.Surfaces.ApplyMaterial(mid);
					}

					glPushMatrix();
					glMultMatrix(this.PhysicObject.transformMatrixBuffer);
					glScalef(this.GetScale().x, this.GetScale().y,
							this.GetScale().z);
					mesh.Render(i);
					glScalef(1, 1, 1);
					glPopMatrix();
				}

				mesh.vbo.UnBind();
			}

		}
	}

	// -----------------------------------------------------------------------
	// TF3D_Body:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Update Physic Object <BR>
	 * - get transformationmatrix for render mesh <BR>
	 * - set entity position from rigid body<BR>
	 * - set rotation angles from rigid body <BR>
	 * - prepare new AABB for frustum culling<BR>
	 * -------------------------------------------------------------------<BR>
	 */
	// -----------------------------------------------------------------------
	@Override
	public void Update()
	{
		// // get current model transformation
		this.PhysicObject.RigidBody.getMotionState().getWorldTransform(
				this.PhysicObject.Transform);
		this.PhysicObject.Transform
				.getOpenGLMatrix(this.PhysicObject.transformMatrix);
		this.PhysicObject.transformMatrixBuffer
				.put(this.PhysicObject.transformMatrix);
		this.PhysicObject.transformMatrixBuffer.rewind();

		this.SetPosition(this.PhysicObject.GetPosition());

		this.SetRotation(this.PhysicObject.GetRotation());

		// get current AABB and calc it for next Frustum culling
		Vector3f aabbMin = new Vector3f();
		Vector3f aabbMax = new Vector3f();
		this.PhysicObject.RigidBody.getAabb(aabbMin, aabbMax);
		this.BBOX.CalcFromMinMax(aabbMin, aabbMax);

	}

	// -----------------------------------------------------------------------
	// TF3D_Body:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Reset PhysicsObject <BR>
	 * -------------------------------------------------------------------<BR>
	 */
	// -----------------------------------------------------------------------
	public void Reset()
	{
		F3D.Physic.dynamicsWorld
				.getBroadphase()
				.getOverlappingPairCache()
				.cleanProxyFromPairs(
						this.PhysicObject.RigidBody.getBroadphaseHandle(),
						F3D.Physic.getDynamicsWorld().getDispatcher());
		this.PhysicObject.Transform.origin.set(this.start_position);
	}

	// -----------------------------------------------------------------------
	// TF3D_Body:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Destroy PhysicsObject <BR>
	 * -------------------------------------------------------------------<BR>
	 */
	// -----------------------------------------------------------------------
	public void Destroy()
	{
		this.PhysicObject.RigidBody.destroy();
	}

}

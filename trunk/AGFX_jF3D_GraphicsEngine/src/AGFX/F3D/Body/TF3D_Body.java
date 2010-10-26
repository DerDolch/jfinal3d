/**
 * 
 */
package AGFX.F3D.Body;

import javax.vecmath.Quat4f;
import javax.vecmath.Vector3f;
import com.bulletphysics.util.ObjectArrayList;

import AGFX.F3D.F3D;
import AGFX.F3D.Entity.TF3D_Entity;
import AGFX.F3D.Math.TF3D_MathUtils;
import AGFX.F3D.Physics.TF3D_PhysicObject;

import static org.lwjgl.opengl.GL11.*;

/**
 * @author AndyGFX sssss
 */

public class TF3D_Body extends TF3D_Entity
{
	private int mesh_id = -1;
	private int surface_id = -1;

	public TF3D_PhysicObject PhysicObject;

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
		} else
		{
			F3D.Log.error("TF3D_Body",
					"AssignMesh() : index of assigned MeshName is -1 (Mesh '"
							+ meshname + "' doesn't exist.)");
		}
	}

	// -----------------------------------------------------------------------
	// TF3D_Body:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Set surface material to user defined (assigned material to mesh is
	 * ignored) <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param name
	 */
	// -----------------------------------------------------------------------
	public void SetSurface(String name)
	{
		this.surface_id = F3D.Surfaces.FindByName(name);

	}

	// -----------------------------------------------------------------------
	// TF3D_Body:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Render Physic Body <BR>
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

				if (this.mesh_id >= 0)
				{
					glPushMatrix();
					glMultMatrix(this.PhysicObject.transformMatrixBuffer);
					glScalef(this.GetScale().x, this.GetScale().y,
							this.GetScale().z);
					F3D.Meshes.items.get(this.mesh_id).Render();
					glScalef(1, 1, 1);
					glPopMatrix();
				}

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

/**
 * 
 */
package AGFX.F3D.Body;

import javax.vecmath.Quat4f;
import javax.vecmath.Vector3f;
import com.bulletphysics.util.ObjectArrayList;

import AGFX.F3D.F3D;
import AGFX.F3D.Entity.TF3D_Entity;
import AGFX.F3D.Physics.TF3D_PhysicObject;

import static org.lwjgl.opengl.GL11.*;

/**
 * @author AndyGFX sssss
 */

public class TF3D_Body extends TF3D_Entity
{
	private int              mesh_id    = -1;
	private int              surface_id = -1;

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
			F3D.Log.error("TF3D_Body", "You can't create rigidbody when Bullet physics is disabled in Config.use_physics !\n Note: Use TF3D_Model instead TF3D_Body, when you don't use Bullet physics on Model.");
		}

		this.PhysicObject = new TF3D_PhysicObject();

		Vector3f rescaled = new Vector3f();
		rescaled.x = this.BBOX.size.x * this.GetScale().x;
		rescaled.y = this.BBOX.size.y * this.GetScale().y;
		rescaled.z = this.BBOX.size.z * this.GetScale().z;

		this.BBOX.size.set(rescaled);

		if ((shapemode == F3D.BULLET_SHAPE_CONVEXHULL) | (shapemode == F3D.BULLET_SHAPE_TRIMESH))
		{
			this.PhysicObject.Create(shapemode, mass, this.GetPosition(), this.GetRotation(), rescaled, F3D.Meshes.items.get(this.mesh_id));
		} else
		{
			this.PhysicObject.Create(shapemode, mass, this.GetPosition(), this.GetRotation(), rescaled);
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
			F3D.Log.error("TF3D_Body", "AssignMesh() : index of assigned MeshName is -1 (Mesh name doesn't exist.)");
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
			F3D.Log.error("TF3D_Body", "AssignMesh() : index of assigned MeshName is -1 (Mesh '" + meshname + "' doesn't exist.)");
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
					glScalef(this.GetScale().x, this.GetScale().y, this.GetScale().z);
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
	 * -------------------------------------------------------------------<BR>
	 */
	// -----------------------------------------------------------------------
	@Override
	public void Update()
	{
		// update model transformation
		this.PhysicObject.RigidBody.getMotionState().getWorldTransform(this.PhysicObject.Transform);

		this.PhysicObject.Transform.getOpenGLMatrix(this.PhysicObject.transformMatrix);

		this.PhysicObject.transformMatrixBuffer.put(this.PhysicObject.transformMatrix);
		this.PhysicObject.transformMatrixBuffer.rewind();

		// get real position
		this.SetPosition(this.PhysicObject.Transform.origin);

		// get real rotation
		// ???

		Quat4f qm = new Quat4f();
		this.PhysicObject.Transform.getRotation(qm);
		this.SetRotation(Quad2Angles(qm));

		Vector3f aabbMin = new Vector3f();
		Vector3f aabbMax = new Vector3f();

		this.PhysicObject.RigidBody.getAabb(aabbMin, aabbMax);

		this.BBOX.CalcFromMinMax(aabbMin, aabbMax);

	}

	public Quat4f AnglesToQuat4f(float yaw, float roll, float pitch)
	{

		Quat4f q = new Quat4f();
		float angle;
		float sinRoll, sinPitch, sinYaw, cosRoll, cosPitch, cosYaw;
		angle = pitch * 0.5f * F3D.DEGTORAD;
		sinPitch = (float) Math.sin(angle);
		cosPitch = (float) Math.cos(angle);
		angle = roll * 0.5f * F3D.DEGTORAD;
		sinRoll = (float) Math.sin(angle);
		cosRoll = (float) Math.cos(angle);
		angle = yaw * 0.5f * F3D.DEGTORAD;
		sinYaw = (float) Math.sin(angle);
		cosYaw = (float) Math.cos(angle);

		// variables used to reduce multiplication calls.
		float cosRollXcosPitch = cosRoll * cosPitch;
		float sinRollXsinPitch = sinRoll * sinPitch;
		float cosRollXsinPitch = cosRoll * sinPitch;
		float sinRollXcosPitch = sinRoll * cosPitch;

		q.w = (cosRollXcosPitch * cosYaw - sinRollXsinPitch * sinYaw);
		q.x = (cosRollXcosPitch * sinYaw + sinRollXsinPitch * cosYaw);
		q.y = (sinRollXcosPitch * cosYaw + cosRollXsinPitch * sinYaw);
		q.z = (cosRollXsinPitch * cosYaw - sinRollXcosPitch * sinYaw);

		return q;
	}

	public Vector3f Quad2Angles(Quat4f q1)
	{
		
		/*
		 
		{
		if (angles == null)
			angles = new float[3];
		else if (angles.length != 3)
			throw new IllegalArgumentException("Angles array must have three elements");

		float sqw = w * w;
		float sqx = x * x;
		float sqy = y * y;
		float sqz = z * z;
		float unit = sqx + sqy + sqz + sqw; // if normalized is one, otherwise
											// is correction factor
		float test = x * y + z * w;
		if (test > 0.499 * unit) { // singularity at north pole
			angles[1] = 2 * FastMath.atan2(x, w);
			angles[2] = FastMath.HALF_PI;
			angles[0] = 0;
		} else if (test < -0.499 * unit) { // singularity at south pole
			angles[1] = -2 * FastMath.atan2(x, w);
			angles[2] = -FastMath.HALF_PI;
			angles[0] = 0;
		} else {
			angles[1] = FastMath.atan2(2 * y * w - 2 * x * z, sqx - sqy - sqz + sqw); // roll or heading 
			angles[2] = FastMath.asin(2 * test / unit); // pitch or attitude
			angles[0] = FastMath.atan2(2 * x * w - 2 * y * z, -sqx + sqy - sqz + sqw); // yaw or bank
		}
		return angles;
	}  
		 */
		
		float heading;
		float attitude;
		float bank;

		// http://www.euclideanspace.com/maths/geometry/rotations/conversions/quaternionToEuler/index.htm

		double test = q1.x * q1.y + q1.z * q1.w;
		/*
		 * if (test > 0.499) { // singularity at north pole heading =
		 * F3D.RADTODEG * (float)(2 * Math.atan2(q1.x,q1.w)); attitude =
		 * F3D.RADTODEG * (float) (Math.PI/2); bank = F3D.RADTODEG * (float)0f;
		 * return new Vector3f(bank,heading,attitude); } if (test < -0.499) { //
		 * singularity at south pole heading = F3D.RADTODEG * (float) (-2 *
		 * Math.atan2(q1.x,q1.w)); attitude = F3D.RADTODEG * (float) (-
		 * Math.PI/2); bank = F3D.RADTODEG * 0; return new
		 * Vector3f(bank,heading,attitude); }
		 */

		double sqx = q1.x * q1.x;
		double sqy = q1.y * q1.y;
		double sqz = q1.z * q1.z;
		heading = F3D.RADTODEG * (float) Math.atan2(2 * q1.y * q1.w - 2 * q1.x * q1.z, 1 - 2 * sqy - 2 * sqz);
		attitude = F3D.RADTODEG * (float) Math.asin(2 * test);
		bank = F3D.RADTODEG * (float) Math.atan2(2 * q1.x * q1.w - 2 * q1.y * q1.z, 1 - 2 * sqx - 2 * sqz);
		return new Vector3f(bank, heading, attitude);

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
		F3D.Physic.dynamicsWorld.getBroadphase().getOverlappingPairCache().cleanProxyFromPairs(this.PhysicObject.RigidBody.getBroadphaseHandle(), F3D.Physic.getDynamicsWorld().getDispatcher());
		this.PhysicObject.Transform.origin.set(this.start_position);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see AGFX.F3D.Entity.TF3D_Entity#Destroy()
	 */
	public void Destroy()
	{
		this.PhysicObject.RigidBody.destroy();
	}
}

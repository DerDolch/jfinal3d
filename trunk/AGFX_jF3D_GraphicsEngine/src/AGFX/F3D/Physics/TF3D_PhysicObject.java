/**
 * 
 */
package AGFX.F3D.Physics;

import java.nio.FloatBuffer;

import javax.vecmath.Quat4f;
import javax.vecmath.Vector3f;

import org.lwjgl.BufferUtils;

import AGFX.F3D.F3D;

import com.bulletphysics.collision.shapes.BoxShape;
import com.bulletphysics.collision.shapes.CapsuleShape;
import com.bulletphysics.collision.shapes.CapsuleShapeX;
import com.bulletphysics.collision.shapes.CapsuleShapeZ;
import com.bulletphysics.collision.shapes.CollisionShape;
import com.bulletphysics.collision.shapes.ConeShape;
import com.bulletphysics.collision.shapes.ConvexHullShape;
import com.bulletphysics.collision.shapes.StaticPlaneShape;
import com.bulletphysics.collision.shapes.ConeShapeX;
import com.bulletphysics.collision.shapes.ConeShapeZ;
import com.bulletphysics.collision.shapes.CylinderShape;
import com.bulletphysics.collision.shapes.CylinderShapeX;
import com.bulletphysics.collision.shapes.CylinderShapeZ;
import com.bulletphysics.collision.shapes.SphereShape;

import com.bulletphysics.dynamics.RigidBody;
import com.bulletphysics.dynamics.RigidBodyConstructionInfo;
import com.bulletphysics.linearmath.DefaultMotionState;
import com.bulletphysics.linearmath.Transform;
import com.bulletphysics.util.ObjectArrayList;

/**
 * @author AndyGFX
 * 
 */
public class TF3D_PhysicObject
{

	public CollisionShape     Shape;
	public RigidBody          RigidBody;
	public DefaultMotionState MotionState;
	public Transform          Transform;

	public float              mass      = 0.1f;
	public boolean            isDynamic = true;

	public float[]            transformMatrix;
	public FloatBuffer        transformMatrixBuffer;

	public TF3D_PhysicObject()
	{
		this.transformMatrix = new float[16];
		this.transformMatrixBuffer = BufferUtils.createFloatBuffer(16);
	}
	
	
	// -----------------------------------------------------------------------
	// TF3D_PhysicObject: 
	// -----------------------------------------------------------------------
	/**
	 * <BR>-------------------------------------------------------------------<BR> 
	 *  
	 * <BR>-------------------------------------------------------------------<BR> 
	 * @param shapemode
	 * @param mass
	 * @param pos
	 * @param rot
	 * @param size
	 */
	// -----------------------------------------------------------------------
	public void Create(int shapemode,float mass, Vector3f pos, Vector3f rot, Vector3f size)
	{
		this.mass = mass;
		
		
		if (shapemode == F3D.BULLET_SHAPE_PLANE)
		{
			
			size.scale(0.5f);
			this.Shape = new StaticPlaneShape(new Vector3f(0, 1, 0), 0.01f);			
		}
		
		if (shapemode == F3D.BULLET_SHAPE_BOX)
		{
			size.scale(0.5f);
			this.Shape = new BoxShape(size);
		}
		
		if (shapemode == F3D.BULLET_SHAPE_SPHERE)
		{
			size.scale(0.5f);
			this.Shape = new SphereShape(size.x);
		}
		
		if (shapemode == F3D.BULLET_SHAPE_CAPSULE)
		{
			size.scale(0.5f);
			this.Shape = new CapsuleShape(size.x,size.y);
		}
		
		if (shapemode == F3D.BULLET_SHAPE_CAPSULE_X)
		{
			size.scale(0.5f);
			this.Shape = new CapsuleShapeX(size.x,size.y);
		}
		
		if (shapemode == F3D.BULLET_SHAPE_CAPSULE_Z)
		{
			size.scale(0.5f);
			this.Shape = new CapsuleShapeZ(size.x,size.y);
		}
		
		if (shapemode == F3D.BULLET_SHAPE_CYLINDER)
		{
			size.scale(0.5f);
			this.Shape = new CylinderShape(size);
		}
		if (shapemode == F3D.BULLET_SHAPE_CYLINDER_X)
		{
			size.scale(0.5f);
			this.Shape = new CylinderShapeX(size);
		}
		if (shapemode == F3D.BULLET_SHAPE_CYLINDER_Z)
		{
			size.scale(0.5f);
			this.Shape = new CylinderShapeZ(size);
		}
		if (shapemode == F3D.BULLET_SHAPE_CONE)
		{
			size.scale(0.5f);
			this.Shape = new ConeShape(size.x,size.y*2.0f);
		}
		
		if (shapemode == F3D.BULLET_SHAPE_CONE_X)
		{
			size.scale(0.5f);
			this.Shape = new ConeShapeX(size.x,size.y*2.0f);
		}
		
		if (shapemode == F3D.BULLET_SHAPE_CONE_Z)
		{
			size.scale(0.5f);
			this.Shape = new ConeShapeZ(size.x,size.y*2.0f);
		}
		
		
		
		
		// Shape RigidBody

		this.Transform = new Transform();
		this.Transform.setIdentity();

		this.Transform.origin.set(pos);
		Quat4f qrot = new Quat4f();

		qrot.x = rot.x * F3D.DEGTORAD;
		qrot.y = rot.y * F3D.DEGTORAD;
		qrot.z = rot.z * F3D.DEGTORAD;
		qrot.w = 2.0f;

		this.Transform.setRotation(qrot);

		this.MotionState = new DefaultMotionState(this.Transform);

		Vector3f localInertia = new Vector3f(0, 0, 0);
		if (this.mass>0)
		{
			this.Shape.calculateLocalInertia(this.mass, localInertia);
			this.isDynamic = true;
		}

		RigidBodyConstructionInfo rbInfo = new RigidBodyConstructionInfo(this.mass, this.MotionState, this.Shape, localInertia);
		this.RigidBody = new RigidBody(rbInfo);

		this.RigidBody.setRestitution(0.1f);
		this.RigidBody.setFriction(0.5f);
		this.RigidBody.setDamping(0, 0.5f);
		

		F3D.Physic.AddBody(this.RigidBody);
	}

	// -----------------------------------------------------------------------
	// TF3D_PhysicObject: 
	// -----------------------------------------------------------------------
	/**
	 * <BR>-------------------------------------------------------------------<BR> 
	 *  
	 * <BR>-------------------------------------------------------------------<BR> 
	 * @param shapemode
	 * @param mass
	 * @param pos
	 * @param rot
	 * @param size
	 */
	// -----------------------------------------------------------------------
	public void Create(int shapemode,float mass, Vector3f pos, Vector3f rot, Vector3f size, ObjectArrayList<Vector3f>  vertices)
	{
		this.mass = mass;
		
		
		if (shapemode == F3D.BULLET_SHAPE_TRIMESH)
		{
			this.Shape = new ConvexHullShape(vertices);
			
		}
		
		
		// Shape RigidBody

		this.Transform = new Transform();
		this.Transform.setIdentity();

		this.Transform.origin.set(pos);
		Quat4f qrot = new Quat4f();

		qrot.x = rot.x * F3D.DEGTORAD;
		qrot.y = rot.y * F3D.DEGTORAD;
		qrot.z = rot.z * F3D.DEGTORAD;
		qrot.w = 2.0f;

		this.Transform.setRotation(qrot);

		this.MotionState = new DefaultMotionState(this.Transform);

		Vector3f localInertia = new Vector3f(0, 0, 0);
		if (this.mass>0)
		{
			this.Shape.calculateLocalInertia(this.mass, localInertia);
			this.isDynamic = true;
		}

		RigidBodyConstructionInfo rbInfo = new RigidBodyConstructionInfo(this.mass, this.MotionState, this.Shape, localInertia);
		this.RigidBody = new RigidBody(rbInfo);

		this.RigidBody.setRestitution(0.1f);
		this.RigidBody.setFriction(0.5f);
		this.RigidBody.setDamping(0, 0.5f);
		

		F3D.Physic.AddBody(this.RigidBody);
	}
	// -----------------------------------------------------------------------
	// TF3D_PhysicObject: 
	// -----------------------------------------------------------------------
	/**
	 * <BR>-------------------------------------------------------------------<BR> 
	 *  
	 * <BR>-------------------------------------------------------------------<BR> 
	 * @param rest
	 */
	// -----------------------------------------------------------------------
	public void SetRestitution(float rest)
	{
		this.RigidBody.setRestitution(rest);
	}

	// -----------------------------------------------------------------------
	// TF3D_PhysicObject: 
	// -----------------------------------------------------------------------
	/**
	 * <BR>-------------------------------------------------------------------<BR> 
	 *  
	 * <BR>-------------------------------------------------------------------<BR> 
	 * @param fr
	 */
	// -----------------------------------------------------------------------
	public void SetFriction(float fr)
	{
		this.RigidBody.setFriction(fr);
	}
	
	// -----------------------------------------------------------------------
	// TF3D_PhysicObject: 
	// -----------------------------------------------------------------------
	/**
	 * <BR>-------------------------------------------------------------------<BR> 
	 *  
	 * <BR>-------------------------------------------------------------------<BR> 
	 * @param dmin
	 * @param dmax
	 */
	// -----------------------------------------------------------------------
	public void SetDamping(float dmin, float dmax)
	{
		
		this.RigidBody.setDamping(dmin, dmax);
		
	}
}

package AGFX.F3D.Physics;

import javax.vecmath.Vector3f;

import AGFX.F3D.F3D;

import com.bulletphysics.collision.broadphase.BroadphaseInterface;
import com.bulletphysics.collision.broadphase.DbvtBroadphase;
import com.bulletphysics.collision.dispatch.CollisionConfiguration;
import com.bulletphysics.collision.dispatch.CollisionDispatcher;
import com.bulletphysics.collision.dispatch.DefaultCollisionConfiguration;
import com.bulletphysics.collision.shapes.CollisionShape;
import com.bulletphysics.dynamics.DiscreteDynamicsWorld;
import com.bulletphysics.dynamics.DynamicsWorld;
import com.bulletphysics.dynamics.RigidBody;
import com.bulletphysics.dynamics.RigidBodyConstructionInfo;
import com.bulletphysics.dynamics.constraintsolver.SequentialImpulseConstraintSolver;
import com.bulletphysics.linearmath.DebugDrawModes;
import com.bulletphysics.linearmath.DefaultMotionState;
import com.bulletphysics.linearmath.Transform;

public class TF3D_Physics
{

	// this is the most important class
	public DynamicsWorld                     dynamicsWorld = null;
	public BroadphaseInterface               broadphase;
	public CollisionConfiguration            collisionConfiguration;
	public CollisionDispatcher               dispatcher;
	public SequentialImpulseConstraintSolver solver;

	public CollisionShape                    groundShape;
	public RigidBody                         groundBody;
	public DefaultMotionState                groundMotionState;
	public Transform                         groundTransform;
	public TF3D_GLDebugDrawer                Debug;

	public TF3D_Physics()
	{
		F3D.Log.info("TF3D_Physics", "TF3D_Physics: constructor");
		F3D.Log.info("TF3D_Physics", "TF3D_Physics: done");
	}

	public void Initialize()
	{
		// Build the broadphase
		this.broadphase = new DbvtBroadphase();

		// Set up the collision configuration and dispatcher
		this.collisionConfiguration = new DefaultCollisionConfiguration();
		this.dispatcher = new CollisionDispatcher(collisionConfiguration);

		// The actual physics solver
		this.solver = new SequentialImpulseConstraintSolver();

		// The world.
		this.dynamicsWorld = new DiscreteDynamicsWorld(this.dispatcher, this.broadphase, this.solver, this.collisionConfiguration);

		this.dynamicsWorld.setGravity(new Vector3f(0, -10, 0));

		// create VISUAL PHYSICS DEBUG RENDERER
		this.Debug = new TF3D_GLDebugDrawer();
		this.Debug.setDebugMode(DebugDrawModes.DRAW_WIREFRAME | DebugDrawModes.DRAW_AABB | DebugDrawModes.DRAW_CONTACT_POINTS);
		this.dynamicsWorld.setDebugDrawer(this.Debug);

	}

	public RigidBody localCreateRigidBody(float mass, Transform startTransform, CollisionShape shape)
	{

		boolean isDynamic = (mass != 0f);

		Vector3f localInertia = new Vector3f(0f, 0f, 0f);
		if (isDynamic)
		{
			shape.calculateLocalInertia(mass, localInertia);
		}
		DefaultMotionState myMotionState = new DefaultMotionState(startTransform);

		RigidBodyConstructionInfo cInfo = new RigidBodyConstructionInfo(mass, myMotionState, shape, localInertia);

		RigidBody body = new RigidBody(cInfo);

		return body;
	}

	public void AddBody(RigidBody body)
	{
		dynamicsWorld.addRigidBody(body);
	}

	public void Reset()
	{
		// TODO - finilize reset physics world

	}

	public DynamicsWorld getDynamicsWorld()
	{
		return dynamicsWorld;
	}

	public void Update()
	{
		// this.dynamicsWorld.stepSimulation(1/30.f,10);
		this.dynamicsWorld.stepSimulation(1.0f / 100f, 2);
	}

}

/**
 * 
 */
package AGFX.F3D.Vehicle;

import static org.lwjgl.opengl.GL11.glMultMatrix;
import static org.lwjgl.opengl.GL11.glPopMatrix;
import static org.lwjgl.opengl.GL11.glPushMatrix;
import static org.lwjgl.opengl.GL11.glScalef;

import java.nio.FloatBuffer;

import javax.vecmath.Vector3f;

import org.lwjgl.BufferUtils;

import com.bulletphysics.collision.shapes.BoxShape;
import com.bulletphysics.collision.shapes.CollisionShape;
import com.bulletphysics.collision.shapes.CompoundShape;
import com.bulletphysics.dynamics.RigidBody;
import com.bulletphysics.linearmath.Transform;
import com.bulletphysics.util.ObjectArrayList;

import AGFX.F3D.F3D;
import AGFX.F3D.Entity.TF3D_Entity;
import AGFX.F3D.Mesh.TF3D_BoundingBox;

/**
 * @author AndyGFX
 * 
 */
public class TF3D_Vehicle extends TF3D_Entity
{
	
	
	private float gEngineForce          = 0.f;
	private float gBreakingForce        = 0.f;
	private float maxEngineForce        = 1000.f;
	private float maxBreakingForce      = 100.f;
	private float gVehicleSteering      = 0.f;
	private float steeringIncrement     = 0.04f;
	private float steeringClamp         = 0.3f;
	private float wheelRadius           = 0.5f;
	private float wheelWidth            = 0.4f;
	private float wheelFriction         = 1000;
	private float suspensionStiffness   = 20.f;
	private float suspensionDamping     = 2.3f;
	private float suspensionCompression = 4.4f;
	private float rollInfluence         = 0.1f;

	private float suspensionRestLength  = 0.6f;

	// assigned vehicle models
	public int    model_wheel_FL        = -1;
	public int    model_wheel_FR        = -1;
	public int    model_wheel_RL        = -1;
	public int    model_wheel_RR        = -1;
	public int    model_schassis        = -1;
	
	// Physics vehicle definition
	public RigidBody RB_carChassis;
	public ObjectArrayList<CollisionShape> collisionShapes = new ObjectArrayList<CollisionShape>();
	
	
	public float[]  transformMatrix = new float[16];
	public FloatBuffer transformMatrixBuffer = BufferUtils.createFloatBuffer(16);
	
	
	public TF3D_Vehicle(String name)
	{
		
		F3D.Log.info("TF3D_Vehicle", "TF3D_Vehicle: constructor");
		this.name = name;
		F3D.Log.info("TF3D_Vehicle", "TF3D_Vehicle: done");
	}

	
	public void Create()
	{
		Transform tr = new Transform();
		tr.setIdentity();
		
		
		// Shape of Chassis
		
		TF3D_BoundingBox chassis_bbox = new TF3D_BoundingBox();
		chassis_bbox.CalcFromMesh(this.model_schassis);
		chassis_bbox.size.scale(0.5f);
		
		CollisionShape chassisShape = new BoxShape(chassis_bbox.size);
		collisionShapes.add(chassisShape);

		CompoundShape compound = new CompoundShape();
		collisionShapes.add(compound);
		Transform localTrans = new Transform();
		localTrans.setIdentity();

		localTrans.origin.set(0, 1, 0);


		compound.addChildShape(localTrans, chassisShape);

		tr.origin.set(this.GetPosition());

		// RigidBody of Chassis
		
		RB_carChassis = F3D.Physic.localCreateRigidBody(800, tr, compound);
		F3D.Physic.AddBody(RB_carChassis);
		
		
	}

	
	/* (non-Javadoc)
     * @see AGFX.F3D.Entity.TF3D_Entity#Destroy()
     */
    @Override
    public void Destroy()
    {
	    // TODO Auto-generated method stub
	    
    }


	/* (non-Javadoc)
     * @see AGFX.F3D.Entity.TF3D_Entity#Render()
     */
    @Override
    public void Render()
    {
    	if (this.model_schassis >= 0)
		{
    		
    		int mid;
    		mid = F3D.Meshes.items.get(this.model_schassis).data.material_id;
    		if (mid >= 0)
			{
				F3D.Surfaces.ApplyMaterial(mid);
			}
    		
			glPushMatrix();					
			glMultMatrix(this.transformMatrixBuffer);
			glScalef(this.GetScale().x, this.GetScale().y, this.GetScale().z);
			F3D.Meshes.items.get(this.model_schassis).Render();
			glScalef(1, 1, 1);
			glPopMatrix();
		}
	    
    }


	/* (non-Javadoc)
     * @see AGFX.F3D.Entity.TF3D_Entity#Update()
     */
    @Override
    public void Update()
    {
    	// update model transformation
    	Transform ch_tr = new Transform();
    	
		this.RB_carChassis.getMotionState().getWorldTransform(ch_tr);

		ch_tr.getOpenGLMatrix(this.transformMatrix);

		this.transformMatrixBuffer.put(this.transformMatrix);
		this.transformMatrixBuffer.rewind();
	    
    }
}

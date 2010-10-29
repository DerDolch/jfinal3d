// -----------------------------------------------------------------------
// A3D_Entity:
// -----------------------------------------------------------------------

package AGFX.F3D.Entity;

import java.util.ArrayList;
import javax.vecmath.*;

import AGFX.F3D.F3D;
import AGFX.F3D.Math.TF3D_Axis3f;
import AGFX.F3D.Mesh.TF3D_BoundingBox;

/**
 * @author AndyGFX
 * 
 */
public abstract class TF3D_Entity
{

	/** Entity start position - used for physics restart */
	public Vector3f               start_position;
	/** Entity rotation - used for physics restart */
	public Vector3f               start_rotation;

	/** Entity position */
	private Vector3f              position;
	/** Entity rotation */
	private Vector3f              rotation;
	/** Entity scale */
	private Vector3f              scale;
	/** Entity axis vectors */
	public TF3D_Axis3f            axis;
	/** class name of entity */
	public int                    classname;
	/** name of entity */
	public String                 name;
	/** move speed */
	public float                  movespeed;
	/** rotation speed */
	public float                  turnspeed;
	public Boolean                visibility = false;
	private Boolean               enable     = true;

	public ArrayList<TF3D_Entity> childs;
	public TF3D_Entity            parent;
	public Boolean                is_child   = false;

	public TF3D_BoundingBox       BBOX;

	// -----------------------------------------------------------------------
	// TA3D_Entity:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Constructor <BR>
	 * -------------------------------------------------------------------<BR>
	 */
	// -----------------------------------------------------------------------
	public TF3D_Entity()
	{
		F3D.Log.info("TF3D_Entity", "Create - constructor");

		this.start_position = new Vector3f();
		this.start_rotation = new Vector3f();

		this.position = new Vector3f();
		this.rotation = new Vector3f();
		this.scale = new Vector3f();
		this.scale.set(1.0f, 1.0f, 1.0f);
		this.name = "noname";
		this.axis = new TF3D_Axis3f();
		this.movespeed = 1.0f;
		this.turnspeed = 1.0f;

		this.BBOX = new TF3D_BoundingBox();

		this.childs = new ArrayList<TF3D_Entity>();

		if (F3D.Config.e_world_autoassign)
		{
			F3D.Worlds.Add(this);
		}

	}

	// -----------------------------------------------------------------------
	// TA3D_Entity:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * set Entity position <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param _x
	 *            X position
	 * @param _y
	 *            Y position
	 * @param _z
	 *            Z position
	 */
	// -----------------------------------------------------------------------
	public void SetPosition(float _x, float _y, float _z)
	{
		this.position.set(_x, _y, _z);
	}

	public Vector3f GetPosition()
	{
		return this.position;
	}

	// -----------------------------------------------------------------------
	// TA3D_Entity:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Set Entity position <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param p
	 *            vector3f
	 */
	// -----------------------------------------------------------------------
	public void SetPosition(Vector3f p)
	{
		this.position = p;
	}

	// -----------------------------------------------------------------------
	// TA3D_Entity:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Set entity rotation and recalculate calculate Axis orientation <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param _x
	 *            X axis angle
	 * @param _y
	 *            Y axis angle
	 * @param _z
	 *            Z axis angle
	 */
	// -----------------------------------------------------------------------
	public void SetRotation(float _x, float _y, float _z)
	{
		this.rotation.set(_x, _y, _z);
	}

	// -----------------------------------------------------------------------
	// TA3D_Entity:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Set entity rotation and recalculate calculate Axis orientation <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param r
	 *            rotation angles as vector
	 */
	// -----------------------------------------------------------------------
	public void SetRotation(Vector3f r)
	{
		this.rotation = r;
	}

	public Vector3f GetRotation()
	{
		return this.rotation;

	}

	// -----------------------------------------------------------------------
	// TA3D_Entity:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Set Entity scale <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param _x
	 *            X scale size [1.0f]
	 * @param _y
	 *            Y scale size [1.0f]
	 * @param _z
	 *            Z scale size [1.0f]
	 */
	// -----------------------------------------------------------------------
	public void SetScale(float _x, float _y, float _z)
	{
		this.scale.set(_x, _y, _z);
	}

	public void SetName(String n)
	{
		this.name = n;
	}

	public String GetName()
	{
		return this.name;
	}

	// -----------------------------------------------------------------------
	// TA3D_Entity:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Set Entity scale <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param s
	 *            scale vector [1.0f,1.0f,1.0f]
	 */
	// -----------------------------------------------------------------------
	public void SetScale(Vector3f s)
	{
		this.scale = s;
	}

	public Vector3f GetScale()
	{
		return this.scale;
	}

	// -----------------------------------------------------------------------
	// TA3D_Entity:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * set entity move speed <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param s
	 *            speed [0.1f]
	 */
	// -----------------------------------------------------------------------
	public void SetMoveSpeed(float s)
	{
		this.movespeed = s;
	}

	// -----------------------------------------------------------------------
	// TA3D_Entity:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * get move speed <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @return move speed
	 */
	// -----------------------------------------------------------------------
	public float GetMoveSpeed()
	{
		return this.movespeed;
	}

	// -----------------------------------------------------------------------
	// TA3D_Entity:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * set turn speed <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param s
	 *            turn speed [1.0f]
	 */
	// -----------------------------------------------------------------------
	public void SetTurnSpeed(float s)
	{
		this.turnspeed = s;
	}

	// -----------------------------------------------------------------------
	// TA3D_Entity:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Get entity turn speed <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @return turn speed
	 */
	// -----------------------------------------------------------------------
	public float GetTurnSpeed()
	{
		return this.turnspeed;
	}

	public void UpdateAxisDirection()
	{
		this.axis.GetFromEuler(this.rotation);
	}

	public void Turn(float dx, float dy, float dz)
	{
		Vector3f res = new Vector3f(0, 0, 0);

		res.add(this.rotation, new Vector3f(dx, dy, dz));

		this.SetRotation(res);
	}

	public void Move(float dx, float dy, float dz)
	{

		this.UpdateAxisDirection();

		this.axis._right.scale(dx);
		this.axis._up.scale(dy);
		this.axis._forward.scale(dz);

		this.position.add(this.position, this.axis._right);
		this.position.add(this.position, this.axis._up);
		this.position.add(this.position, this.axis._forward);
	}

	// -----------------------------------------------------------------------
	// TA3D_Entity:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Check if Entity is visible in Frustum <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param vertices
	 *            vertex array
	 * @param indices
	 *            indices array
	 * @param length
	 *            lenght of indices
	 * @return
	 */
	// -----------------------------------------------------------------------
	public boolean IsVisible()
	{
		Vector3f sum = new Vector3f(0, 0, 0);
		sum.add(this.GetPosition(), this.BBOX.center);
		this.visibility = F3D.Frustum.BoxInFrustum(sum, this.BBOX.size);
		return this.visibility;

	}

	public void Enable()
	{
		this.enable = true;
	}

	public void Disable()
	{
		this.enable = false;
	}

	public Boolean IsEnabled()
	{
		return this.enable;
	}

	// -----------------------------------------------------------------------
	// TF3D_Entity:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Add CHILD entity and set parent (owner) <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param m
	 */
	// -----------------------------------------------------------------------
	public void AddChild(TF3D_Entity m)
	{
		m.parent = this;
		this.is_child = true;
		this.childs.add(m);
	}

	// -----------------------------------------------------------------------
	// TF3D_Entity:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Remove CHILD entity from parent child list <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param m
	 */
	// -----------------------------------------------------------------------
	public void RemoveChild(TF3D_Entity m)
	{
		m.is_child = false;
		this.childs.remove(m);
	}

	// -----------------------------------------------------------------------
	// TF3D_Entity:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Remove CHILD entity from parent child list <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param m
	 */
	// -----------------------------------------------------------------------
	public void ClearChild()
	{
		this.parent = null;
		this.childs.clear();
	}

	public abstract void Destroy();

	// -----------------------------------------------------------------------
	// TF3D_Entity:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Abstract method for rendering entity, you need define this method in your
	 * extends<BR>
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 */
	// -----------------------------------------------------------------------
	public abstract void Render();

	// -----------------------------------------------------------------------
	// TF3D_Entity:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Abstract method for update entity, you need define this method in your
	 * extends<BR>
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 */
	// -----------------------------------------------------------------------
	public abstract void Update();

}

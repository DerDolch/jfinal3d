/**
 * 
 */
package AGFX.F3D.Particles;

import javax.vecmath.Vector3f;

import AGFX.F3D.F3D;
import AGFX.F3D.Entity.TF3D_Entity;

import static org.lwjgl.opengl.GL11.*;

/**
 * @author AndyGFX
 * 
 */
public class TF3D_Particle_item
{

	// ////////////// Variables /////////////////////////

	private float    lifetime = 100f;
	private float    decay    = 1f;

	private Vector3f force;
	private Vector3f speed;
	private Vector3f gravity;
	public Vector3f position;

	// /////////////// Functions /////////////////////////

	TF3D_Particle_item(float lifetime, float decay, float size)
	{
		if (lifetime != 0)
		{
			this.lifetime = lifetime;
		}
		if (decay != 0)
		{
			this.decay = decay;
		}

		this.position = new Vector3f();
		this.force = new Vector3f();
		this.speed = new Vector3f();
		this.gravity = new Vector3f(0,-0.1f,0);
	}



	public void setSpeed(float sx, float sy, float sz)
	{
		this.force.set(sx, sy, sz);
	}

	public void setSpeed(Vector3f s)
	{
		this.force.set(s.x, s.y, s.z);
	}

	public void incSpeed()
	{
		this.speed.x = this.force.x * F3D.Timer.AppSpeed();
		this.speed.y = this.force.y * F3D.Timer.AppSpeed();
		this.speed.z = this.force.z * F3D.Timer.AppSpeed();
	}

	public void SetGravity(float gx, float gy, float gz)
	{
		this.gravity.set(gx,gy,gz);		
	}
	
	public void SetGravity(Vector3f g)
	{
		this.gravity.set(g.x,g.y,g.z);		
	}
	
	
	public void applyGravity()
	{
		this.speed.add(this.gravity);
	}
	
	public boolean isAlive()
	{
		return (lifetime > 0.0);
	}

	public void evolve()
	{
		lifetime -= decay * F3D.Timer.AppSpeed();

		this.position.add(this.speed);
	}

	public void Render()
	{
		F3D.Draw.Axis(this.position, 1f);

	}

	

}

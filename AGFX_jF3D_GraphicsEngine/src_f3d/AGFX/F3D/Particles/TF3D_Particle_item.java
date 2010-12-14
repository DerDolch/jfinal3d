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
	public float    decay    = 1f;

	private Vector3f acceleration;
	private Vector3f velocity;
	private Vector3f gravity;
	
	public Vector3f position;

	// /////////////// Functions /////////////////////////

	public TF3D_Particle_item(float lifetime, float decay, float size)
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
		this.acceleration = new Vector3f();
		this.velocity = new Vector3f();
		this.gravity = new Vector3f(0,-0.05f,0);
		
	}



	public void SetAcceleration(float sx, float sy, float sz)
	{
		this.acceleration.set(sx, sy, sz);
	}

	public void SetAcceleration(Vector3f s)
	{
		this.acceleration.set(s.x, s.y, s.z);
	}

	
	public boolean isAlive()
	{
		return (lifetime > 0.0);
	}

	
	public void Update()
	{
		lifetime -= decay ;

		this.velocity.add(this.acceleration);
		this.velocity.add(this.gravity);
		this.position.add(this.velocity);
		
		
		F3D.Log.info("PARTICLE:", String.valueOf(lifetime)+": "+this.position.toString());
	}

	public void Render()
	{
		F3D.Draw.Axis(this.position, 1f);

	}

	

}

/**
 * 
 */
package AGFX.F3D.Particles;

import javax.vecmath.Vector3f;
import static org.lwjgl.opengl.GL11.*;

import AGFX.F3D.F3D;

/**
 * @author AndyGFX
 * 
 */
public class TF3D_Particle_emitter
{

	// /////////////// Constants /////////////////////////

	private int					count		= 0;
	private float				lifetime	= 100f;
	private int					texture_id	= -1;
	private Vector3f			accel;
	public float				decay		= 1f;

	// ////////////// Variables /////////////////////////

	private TF3D_Particle_item	p[];

	public TF3D_Particle_emitter(int count, float lifetime, int texture_id, Vector3f accel, float decay)
	{
		this.count = count;
		this.texture_id = texture_id;
		this.lifetime = lifetime;
		this.decay = decay;
		this.accel = new Vector3f(accel);
		this.p = new TF3D_Particle_item[this.count];

	}

	private TF3D_Particle_item createParticle()
	{
		TF3D_Particle_item p = new TF3D_Particle_item(this.lifetime, this.decay, 1f);
		p.SetAcceleration(accel);
		return p;
	}

	// //////////////// draw ////////////////////////////////

	public void Render()
	{

		glDepthMask(false);

		// Loop over particles.
		for (int i = 0; i < this.count; i++)
		{
			// Create new particles for continuous effect.
			if (p[i] == null)
			{
				p[i] = createParticle();
				break; // Create one particle per time step.
			}

			// Kill particle if it hits the ground or died.
			if (p[i].position.y < 0.0f || !p[i].isAlive())
			{
				p[i] = createParticle();
			}

			// Update

			p[i].Update();

			// Select texture and draw.
			if (this.texture_id >= 0)
			{
				F3D.Textures.Bind(this.texture_id);
			}
			p[i].Render();

		} // end particle loop.

		glDepthMask(true);
	}

}

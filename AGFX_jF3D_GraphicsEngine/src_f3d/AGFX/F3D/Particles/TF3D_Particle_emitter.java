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

	private int                count      = 0;
	private float              lifetime   = 100f;
	private int                texture_id = -1;
	private Vector3f           speed;

	// ////////////// Variables /////////////////////////

	private TF3D_Particle_item p[];

	public TF3D_Particle_emitter(int count, float lifetime, int texture_id, Vector3f speed)
	{
		this.count = count;
		this.texture_id = texture_id;
		this.lifetime = lifetime;
		this.speed = new Vector3f(speed);
		this.p = new TF3D_Particle_item[this.count];

	}

	private TF3D_Particle_item createParticle()
	{
		TF3D_Particle_item p = new TF3D_Particle_item(this.lifetime, 0f, 0f);
		Vector3f delta_speed = new Vector3f(this.speed);
		delta_speed.scale(this.lifetime);
		p.setSpeed(delta_speed);
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
			if (p[i].getPosY() < 0.0f || !p[i].isAlive())
			{
				p[i] = createParticle();
			}

			// Apply gravity.
			p[i].incSpeed(-0.00004f);
			p[i].evolve();

			// Select texture and draw.
			if (this.texture_id>=0)
			{
				F3D.Textures.Bind(this.texture_id);
			}
			p[i].Render();

		} // end particle loop.

		glDepthMask(true);
	}

}

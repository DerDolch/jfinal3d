/**
 * 
 */
package AGFX.F3D.Particles;

import javax.vecmath.Vector3f;
import static org.lwjgl.opengl.GL11.*;

import AGFX.F3D.F3D;
import AGFX.F3D.Billboard.TF3D_Billboard;
import AGFX.F3D.Entity.TF3D_Entity;

/**
 * @author AndyGFX
 * 
 */
public class TF3D_Particles extends TF3D_Entity
{

	private int						PARTICLES_COUNT	= 500;
	private TF3D_Particle_item[]	particles;
	private TF3D_Particle_Sprite	sprite;

	private float					lifetime		= 1000f;
	private Vector3f				gravity;
	private Vector3f				direction;

	// -------------------------------------------------------

	private boolean					doBurst;
	private float					slowdown;
	private float					xspeed;
	private float					yspeed;

	private float					colors[][]		= { { 1.0f, 0.5f, 0.5f }, { 1.0f, 0.75f, 0.5f }, { 1.0f, 1.0f, 0.5f }, { 0.75f, 1.0f, 0.5f }, { 0.5f, 1.0f, 0.5f }, { 0.5f, 1.0f, 0.75f }, { 0.5f, 1.0f, 1.0f }, { 0.5f, 0.75f, 1.0f }, { 0.5f, 0.5f, 1.0f }, { 0.75f, 0.5f, 1.0f }, { 1.0f, 0.5f, 1.0f }, { 1.0f, 0.5f, 0.75f } };

	public TF3D_Particles(String name, int count, TF3D_Particle_Sprite sprite, float life)
	{
		this.PARTICLES_COUNT = count;

		if (count > 500)
		{
			this.PARTICLES_COUNT = 500;
		}

		this.particles = new TF3D_Particle_item[this.PARTICLES_COUNT];
		this.sprite = sprite;
		this.lifetime = life;
		this.classname = F3D.CLASS_PARTICLE_EMITTER;
		this.name = name;
		this.gravity = new Vector3f(0, 0, 0);
		this.direction = new Vector3f(0, 0, 0);

		this.slowdown = 1.0f;
		this.xspeed = Math.min(200, this.xspeed + 1);
		this.yspeed = Math.min(200, this.yspeed + 1);
	}

	public void Init()
	{
		// Initials All The Textures
		for (int loop = 0; loop < this.PARTICLES_COUNT; loop++)
		{
			particles[loop] = new TF3D_Particle_item();

			// particles[loop].sprite = new TF3D_Particle_Sprite();

			particles[loop].sprite = this.sprite.Clone();
			particles[loop].sprite.name = this.sprite.name + "_" + String.valueOf(loop);

			// Make All The Particles Active
			particles[loop].active = true;

			// Give All The Particles Full Life
			particles[loop].life = this.lifetime;

			particles[loop].delta_life = 1f / this.lifetime;

			// Random Fade Speed
			particles[loop].fade = (float) (100 * Math.random()) / this.lifetime + 0.003f;

			// Select Rainbow Color
			particles[loop].r = colors[loop * (12 / this.PARTICLES_COUNT)][0];
			particles[loop].g = colors[loop * (12 / this.PARTICLES_COUNT)][1];
			particles[loop].b = colors[loop * (12 / this.PARTICLES_COUNT)][2];

			// Random DIrection*Speed
			// TODO write emitter types [point, line, plane, area, mesh]
			particles[loop].direction.set(this.direction);

			// particles[loop].sprite.SetPosition(particles[loop].direction);
			particles[loop].sprite.SetPosition(0, 0, 0);

			// Set GRAVITY
			particles[loop].gravity.set(this.gravity);
		}

	}

	public void Update()
	{

		for (int loop = 0; loop < this.PARTICLES_COUNT; loop++) 
		{
			if (particles[loop].active) // If The Particle Is Active
			{

				if (doBurst) // Tab Key Causes A Burst
				{
					particles[loop].position.set(0, 0, 0);

					particles[loop].direction.x = (float) ((50 * Math.random()) - 26.0f) * 10.0f;
					particles[loop].direction.y = (float) ((50 * Math.random()) - 25.0f) * 10.0f; 
					particles[loop].direction.z = (float) ((50 * Math.random()) - 25.0f) * 10.0f;
				}
			}
		}

		doBurst = false;
	}

	public void Render()
	{
		for (int loop = 0; loop < this.PARTICLES_COUNT; loop++) 
		{
			if (particles[loop].active) // If The Particle Is Active
			{

				// set sprite position

				// TODO scale from - to size
				// particles[loop].sprite.SetScale(zoomRate, zoomRate,
				// zoomRate);

				particles[loop].sprite.SetPosition(particles[loop].position);

				// Draw The Particle Using Our RGB Values, Fade The Particle
				// Based On It's Life

				// SET COLOR !!!!
				// TODO rewrite TF3D_Billboard to special version for particle
				// with separated material per particle item

				particles[loop].sprite.material.colors.diffuse[0] = particles[loop].r;
				particles[loop].sprite.material.colors.diffuse[1] = particles[loop].g;
				particles[loop].sprite.material.colors.diffuse[2] = particles[loop].b;

				// POS = POS + ((appApeed)*(DIR/(slowdown * this.lifetime)

				Vector3f delta_dir = new Vector3f(particles[loop].direction);
				delta_dir.scale(F3D.Timer.AppSpeed() * (1f / (slowdown * this.lifetime)));
				particles[loop].position.add(delta_dir);

				// ADD GRAVITY
				particles[loop].direction.add(particles[loop].gravity);

				particles[loop].life -= particles[loop].fade; // Reduce
																// Particles
																// Life By
																// 'Fade'

				if (particles[loop].life < 0.0f) // If Particle Is Burned Out
				{
					particles[loop].life = this.lifetime; // Give It New Life
					particles[loop].fade = (float) (100 * Math.random()) / this.lifetime + 0.003f; // Random
																									// Fade
																									// Value
					particles[loop].position.set(0, 0, 0);
					particles[loop].direction.x = xspeed + (float) ((60 * Math.random()) - 32.0f); // X
																									// Axis
																									// Speed
																									// And
																									// Direction
					particles[loop].direction.y = yspeed + (float) ((60 * Math.random()) - 30.0f); // Y
																									// Axis
																									// Speed
																									// And
																									// Direction
					particles[loop].direction.z = (float) ((60 * Math.random()) - 30.0f); // Z
																							// Axis
																							// Speed
																							// And
																							// Direction
					// Reset color
					// TODO color reset
				}
			}

		}

	}

	public void SetGravity(float gx, float gy, float gz)
	{
		this.gravity = new Vector3f(gx, gy, gz);
	}

	public void SetGravity(Vector3f g)
	{
		this.gravity = new Vector3f(g);
	}

	public void SetDirection(float gx, float gy, float gz)
	{
		this.direction = new Vector3f(gx, gy, gz);
	}

	public void SetDirection(Vector3f g)
	{
		this.direction = new Vector3f(g);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see AGFX.F3D.Entity.TF3D_Entity#Destroy()
	 */
	@Override
	public void Destroy()
	{
		// TODO Auto-generated method stub

	}

	public void createBurst()
	{
		this.doBurst = true;
	}
}

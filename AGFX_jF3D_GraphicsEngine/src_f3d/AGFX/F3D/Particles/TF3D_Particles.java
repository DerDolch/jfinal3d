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

	private int                  PARTICLES_COUNT = 500;
	private TF3D_Particle_item[] particles;
	private TF3D_Particle_Sprite sprite;

	private boolean              rainbow         = true;                 // Rainbow Mode?
	private float                lifetime        = 1000f;
	private float                slowdown        = 2.0f;                 // Slow Down Particles
	private boolean              speedUp;
	private boolean              slowDown;

	private float                xspeed;                                 // Base X Speed (To Allow Keyboard Direction Of Tail)
	private boolean              increaseXSpeed;
	private boolean              decreaseXSpeed;

	private float                yspeed;                                 // Base Y Speed (To Allow Keyboard Direction Of Tail)
	private boolean              increaseYSpeed;
	private boolean              decreaseYSpeed;

	private float                zoomRate        = 1.0f;                 // Used To Zoom Out
	private boolean              increaseParticleGrowSpeed;
	private boolean              decreaseParticleGrowSpeed;

	private int                  col;                                    // Current Color Selection
	private int                  delay;                                  // Rainbow Effect Delay

	private boolean              doPullLeft      = false;
	private boolean              doPullRight     = false;
	private boolean              doPullUp        = false;
	private boolean              doPullDown      = false;
	private boolean              doBurst         = false;

	private float                colors[][]      =
	                                             {
	                                             { 1.0f, 0.5f, 0.5f },
	                                             { 1.0f, 0.75f, 0.5f },
	                                             { 1.0f, 1.0f, 0.5f },
	                                             { 0.75f, 1.0f, 0.5f },
	                                             { 0.5f, 1.0f, 0.5f },
	                                             { 0.5f, 1.0f, 0.75f },
	                                             { 0.5f, 1.0f, 1.0f },
	                                             { 0.5f, 0.75f, 1.0f },
	                                             { 0.5f, 0.5f, 1.0f },
	                                             { 0.75f, 0.5f, 1.0f },
	                                             { 1.0f, 0.5f, 1.0f },
	                                             { 1.0f, 0.5f, 0.75f } };

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
	}

	public void increasePullDownwards(boolean pull)
	{
		this.doPullDown = pull;
	}

	public void increasePullUpwards(boolean pull)
	{
		this.doPullUp = pull;
	}

	public void increasePullLeft(boolean pull)
	{
		this.doPullLeft = pull;
	}

	public void increasePullRight(boolean pull)
	{
		this.doPullRight = pull;
	}

	public void createBurst()
	{
		this.doBurst = true;
	}

	public void slowDown(boolean slowDown)
	{
		this.slowDown = slowDown;
	}

	public void speedUp(boolean speedUp)
	{
		this.speedUp = speedUp;
	}

	public void decreaseParticleGrowSpeed(boolean decrease)
	{
		this.decreaseParticleGrowSpeed = decrease;
	}

	public void increaseParticleGrowSpeed(boolean increase)
	{
		this.increaseParticleGrowSpeed = increase;
	}

	public void toggleRainbowEffect()
	{
		this.rainbow = !this.rainbow;
	}

	public void increaseXSpeed(boolean increase)
	{
		this.increaseXSpeed = increase;
	}

	public void decreaseXSpeed(boolean decrease)
	{
		this.decreaseXSpeed = decrease;
	}

	public void increaseYSpeed(boolean increase)
	{
		this.increaseYSpeed = increase;
	}

	public void decreaseYSpeed(boolean decrease)
	{
		this.decreaseYSpeed = decrease;
	}

	public void cycleColor()
	{
		this.delay = 0;
		this.col = (this.col + 1) % this.colors.length;
	}

	public void Init()
	{
		// Initials All The Textures
		for (int loop = 0; loop < this.PARTICLES_COUNT; loop++)
		{
			particles[loop] = new TF3D_Particle_item();

			//particles[loop].sprite = new TF3D_Particle_Sprite();
			
			particles[loop].sprite = this.sprite.Clone();
			particles[loop].sprite.name = this.sprite.name+"_"+String.valueOf(loop);
			
			// Make All The Particles Active
			particles[loop].active = true;

			// Give All The Particles Full Life
			particles[loop].life = this.lifetime;

			// Random Fade Speed
			particles[loop].fade = (float) (100 * Math.random()) / this.lifetime + 0.003f;

			// Select Rainbow Color
			particles[loop].r = colors[loop * (12 / this.PARTICLES_COUNT)][0];
			particles[loop].g = colors[loop * (12 / this.PARTICLES_COUNT)][1];
			particles[loop].b = colors[loop * (12 / this.PARTICLES_COUNT)][2];

			// Random Speed
			particles[loop].direction.x = (float) ((50 * Math.random()) - 26.0f) * 10.0f;
			particles[loop].direction.y = (float) ((50 * Math.random()) - 25.0f) * 10.0f;
			particles[loop].direction.z = (float) ((50 * Math.random()) - 25.0f) * 10.0f;

			// particles[loop].sprite.SetPosition(particles[loop].direction);
			particles[loop].sprite.SetPosition(0, 0, 0);

			// Set GRAVITY
			particles[loop].gravity.set(0, 0, 0);
		}
		
	}

	public void Update()
	{
		if (this.slowDown)
			this.slowdown = Math.min(4, this.slowdown + 0.01f);

		if (this.speedUp)
			this.slowdown = Math.max(1, this.slowdown - 0.01f);

		if (this.decreaseParticleGrowSpeed)
			this.zoomRate -= 0.1f;

		if (this.increaseParticleGrowSpeed)
			this.zoomRate += 0.1f;

		if (this.increaseXSpeed)
			this.xspeed = Math.min(200, this.xspeed + 1);

		if (this.decreaseXSpeed)
			this.xspeed = Math.max(-200, this.xspeed - 1);

		if (this.increaseYSpeed)
			this.yspeed = Math.min(200, this.yspeed + 1);

		if (this.decreaseYSpeed)
			this.yspeed = Math.max(-200, this.yspeed - 1);

		for (int loop = 0; loop < this.PARTICLES_COUNT; loop++) // Loop Through All The Particles
		{
			if (particles[loop].active) // If The Particle Is Active
			{

				// If Number Pad 8 And Y Gravity Is Less Than 1.5 Increase Pull Upwards
				if (doPullUp && (particles[loop].gravity.y < 1.5f))
				{
					particles[loop].gravity.y += 0.01f * F3D.Timer.AppSpeed();
				}

				// If Number Pad 2 And Y Gravity Is Greater Than -1.5 Increase Pull Downwards
				if (doPullDown && (particles[loop].gravity.y > -1.5f))
				{
					particles[loop].gravity.y -= 0.01f * F3D.Timer.AppSpeed();
				}

				// If Number Pad 6 And X Gravity Is Less Than 1.5 Increase Pull Right
				if (doPullRight && (particles[loop].gravity.x < 1.5f))
				{
					particles[loop].gravity.x += 0.01f * F3D.Timer.AppSpeed();
				}

				// If Number Pad 4 And X Gravity Is Greater Than -1.5 Increase Pull Left
				if (doPullLeft && (particles[loop].gravity.x > -1.5f))
				{
					particles[loop].gravity.x -= 0.01f * F3D.Timer.AppSpeed();
				}

				if (doBurst) // Tab Key Causes A Burst
				{
					particles[loop].position.set(0, 0, 0);

					particles[loop].direction.x = (float) ((50 * Math.random()) - 26.0f) * 10.0f; // Random Speed On X Axis
					particles[loop].direction.y = (float) ((50 * Math.random()) - 25.0f) * 10.0f; // Random Speed On Y Axis
					particles[loop].direction.z = (float) ((50 * Math.random()) - 25.0f) * 10.0f; // Random Speed On Z Axis
				}
			}
		}

		doBurst = false;
	}

	public void Render()
	{
		for (int loop = 0; loop < this.PARTICLES_COUNT; loop++) // Loop Through All The Particles
		{
			if (particles[loop].active) // If The Particle Is Active
			{

				// set sprite position

				// TODO scale from - to size
				// particles[loop].sprite.SetScale(zoomRate, zoomRate, zoomRate);

				particles[loop].sprite.SetPosition(particles[loop].position);

				// Draw The Particle Using Our RGB Values, Fade The Particle Based On It's Life

				// SET COLOR !!!!
				// TODO rewrite TF3D_Billboard to special version for particle with separated material per particle item

				F3D.Surfaces.materials.get(particles[loop].sprite.material_id).colors.diffuse[0] = particles[loop].r;
				F3D.Surfaces.materials.get(particles[loop].sprite.material_id).colors.diffuse[1] = particles[loop].g;
				F3D.Surfaces.materials.get(particles[loop].sprite.material_id).colors.diffuse[2] = particles[loop].b;

				// POS = POS + ((appApeed)*(DIR/(slowdown * this.lifetime)

				Vector3f delta_dir = new Vector3f(particles[loop].direction);
				delta_dir.scale(F3D.Timer.AppSpeed() * (1f / (slowdown * this.lifetime)));
				particles[loop].position.add(delta_dir);

				// ADD GRAVITY
				particles[loop].direction.add(particles[loop].gravity);

				particles[loop].life -= particles[loop].fade; // Reduce Particles Life By 'Fade'

				if (particles[loop].life < 0.0f) // If Particle Is Burned Out
				{
					particles[loop].life = this.lifetime; // Give It New Life
					particles[loop].fade = (float) (100 * Math.random()) / this.lifetime + 0.003f; // Random Fade Value
					particles[loop].position.set(0, 0, 0);
					particles[loop].direction.x = xspeed + (float) ((60 * Math.random()) - 32.0f); // X Axis Speed And Direction
					particles[loop].direction.y = yspeed + (float) ((60 * Math.random()) - 30.0f); // Y Axis Speed And Direction
					particles[loop].direction.z = (float) ((60 * Math.random()) - 30.0f); // Z Axis Speed And Direction
					particles[loop].r = colors[col][0]; // Select Red From Color Table
					particles[loop].g = colors[col][1]; // Select Green From Color Table
					particles[loop].b = colors[col][2]; // Select Blue From Color Table
				}
			}

		}

		delay++;
		if (delay > 25 && rainbow)
		{
			cycleColor();
		}
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
}

/**
 * 
 */
package AGFX.F3D.Particles;

import javax.vecmath.Vector3f;
import static org.lwjgl.opengl.GL11.*;

import AGFX.F3D.F3D;
import AGFX.F3D.Billboard.TF3D_Billboard;

/**
 * @author AndyGFX
 * 
 */
public class TF3D_Particles
{

	private int                  PARTICLES_COUNT = 500;
	private TF3D_Particle_item[] particles;
	private TF3D_Billboard       sprite;

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

	public TF3D_Particles(int count, TF3D_Billboard sprite, float life)
	{
		this.PARTICLES_COUNT = count;

		if (count > 500)
		{
			this.PARTICLES_COUNT = 500;
		}

		this.particles = new TF3D_Particle_item[this.PARTICLES_COUNT];
		this.sprite = sprite;
		this.lifetime = life;
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

			particles[loop].sprite = new TF3D_Billboard();

			particles[loop].sprite.mode = this.sprite.mode;
			particles[loop].sprite.name = this.sprite.name + "-" + String.valueOf(loop);
			particles[loop].sprite.enable = this.sprite.enable;
			particles[loop].sprite.SetScale(this.sprite.GetScale());
			particles[loop].sprite.bFadeAlpha = this.sprite.bFadeAlpha;
			particles[loop].sprite.bDepthSort = this.sprite.bDepthSort;
			particles[loop].sprite.material_id = this.sprite.material_id;
			particles[loop].sprite.SetScale(this.sprite.GetScale());

			particles[loop].sprite.Dir.set(this.sprite.Dir);

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
			particles[loop].xi = (float) ((50 * Math.random()) - 26.0f) * 10.0f;
			particles[loop].yi = (float) ((50 * Math.random()) - 25.0f) * 10.0f;
			particles[loop].zi = (float) ((50 * Math.random()) - 25.0f) * 10.0f;

			particles[loop].sprite.SetPosition(particles[loop].xi, particles[loop].yi, particles[loop].zi);

			// Set GRAVITY
			particles[loop].xg = 0.0f;
			particles[loop].yg = 0.0f;
			particles[loop].zg = 0.0f;
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
				if (doPullUp && (particles[loop].yg < 1.5f))
				{
					particles[loop].yg += 0.01f * F3D.Timer.AppSpeed();
				}

				// If Number Pad 2 And Y Gravity Is Greater Than -1.5 Increase Pull Downwards
				if (doPullDown && (particles[loop].yg > -1.5f))
				{
					particles[loop].yg -= 0.01f * F3D.Timer.AppSpeed();
				}

				// If Number Pad 6 And X Gravity Is Less Than 1.5 Increase Pull Right
				if (doPullRight && (particles[loop].xg < 1.5f))
				{
					particles[loop].xg += 0.01f * F3D.Timer.AppSpeed();
				}

				// If Number Pad 4 And X Gravity Is Greater Than -1.5 Increase Pull Left
				if (doPullLeft && (particles[loop].xg > -1.5f))
				{
					particles[loop].xg -= 0.01f * F3D.Timer.AppSpeed();
				}

				if (doBurst) // Tab Key Causes A Burst
				{
					particles[loop].x = 0.0f; // Center On X Axis
					particles[loop].y = 0.0f; // Center On Y Axis
					particles[loop].z = 0.0f; // Center On Z Axis
					particles[loop].xi = (float) ((50 * Math.random()) - 26.0f) * 10.0f; // Random Speed On X Axis
					particles[loop].yi = (float) ((50 * Math.random()) - 25.0f) * 10.0f; // Random Speed On Y Axis
					particles[loop].zi = (float) ((50 * Math.random()) - 25.0f) * 10.0f; // Random Speed On Z Axis
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
				// GRAB position
				float x = particles[loop].x;
				float y = particles[loop].y;
				float z = particles[loop].z;

				// set sprite position

				// TODO scale from - to size
				//particles[loop].sprite.SetScale(zoomRate, zoomRate, zoomRate);
				
				particles[loop].sprite.SetPosition(x, y, z);

				// Draw The Particle Using Our RGB Values, Fade The Particle Based On It's Life

				// TODO set particle color

				particles[loop].x += F3D.Timer.AppSpeed() * (particles[loop].xi / (slowdown * this.lifetime));// Move On The X Axis By X Speed
				particles[loop].y += F3D.Timer.AppSpeed() * (particles[loop].yi / (slowdown * this.lifetime));// Move On The Y Axis By Y Speed
				particles[loop].z += F3D.Timer.AppSpeed() * (particles[loop].zi / (slowdown * this.lifetime));// Move On The Z Axis By Z Speed

				particles[loop].xi += particles[loop].xg; // Take Pull On X Axis Into Account
				particles[loop].yi += particles[loop].yg; // Take Pull On Y Axis Into Account
				particles[loop].zi += particles[loop].zg; // Take Pull On Z Axis Into Account

				particles[loop].life -= particles[loop].fade; // Reduce Particles Life By 'Fade'

				if (particles[loop].life < 0.0f) // If Particle Is Burned Out
				{
					particles[loop].life = this.lifetime; // Give It New Life
					particles[loop].fade = (float) (100 * Math.random()) / this.lifetime + 0.003f; // Random Fade Value
					particles[loop].x = 0.0f; // Center On X Axis
					particles[loop].y = 0.0f; // Center On Y Axis
					particles[loop].z = 0.0f; // Center On Z Axis
					particles[loop].xi = xspeed + (float) ((60 * Math.random()) - 32.0f); // X Axis Speed And Direction
					particles[loop].yi = yspeed + (float) ((60 * Math.random()) - 30.0f); // Y Axis Speed And Direction
					particles[loop].zi = (float) ((60 * Math.random()) - 30.0f); // Z Axis Speed And Direction
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
}

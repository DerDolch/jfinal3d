/**
 * 
 */
package AGFX.F3D.Particles;

import javax.vecmath.Vector3f;

import AGFX.F3D.F3D;

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

	// The pariticls resites inside a rectangle.
	private float    size     = 0.4f;

	private Vector3f pos;
	private Vector3f speed;

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
		if (size != 0)
		{
			this.size = size;
		}

		this.pos = new Vector3f();
		this.speed = new Vector3f();
	}

	public float getLifetime()
	{
		return lifetime;
	}

	public float getPosX()
	{
		return pos.x;
	}

	public float getPosY()
	{
		return pos.y;
	}

	public float getPosZ()
	{
		return pos.z;
	}

	public float getSpeedX()
	{
		return speed.x;
	}

	public float getSpeedY()
	{
		return speed.y;
	}

	public float getSpeedZ()
	{
		return speed.z;
	}

	public void setSpeed(float sx, float sy, float sz)
	{
		speed.set(sx, sy, sz);
	}
	
	public void setSpeed(Vector3f s)
	{
		speed.set(s.x, s.y, s.z);
	}

	public void incSpeed(float ds)
	{
		speed.x += ds*F3D.Timer.AppSpeed();
		speed.y += ds*F3D.Timer.AppSpeed();
		speed.z += ds*F3D.Timer.AppSpeed();
	}

	
	public boolean isAlive()
	{
		return (lifetime > 0.0);
	}

	public void evolve()
	{
		lifetime -= decay*F3D.Timer.AppSpeed();
		pos.add(speed);

	}

	public void Render()
	{
		final float halfSize = size / 2f;
		final float x = pos.x - halfSize;
		final float y = pos.y - halfSize;
		final float xs = pos.x + halfSize;
		final float ys = pos.y + halfSize;
		// Particle as small rectangle.

		glBegin(GL_QUADS);
		{
			glTexCoord2f(0f, 0f);
			glVertex3f(x, y, pos.z);
			glTexCoord2f(1f, 0f);
			glVertex3f(xs, y, pos.z);
			glTexCoord2f(1f, 1f);
			glVertex3f(xs, ys, pos.z);
			glTexCoord2f(0f, 1f);
			glVertex3f(x, ys, pos.z);
		}
		glEnd();
		
	}

}

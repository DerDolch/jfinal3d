/**
 * 
 */
package AGFX.F3D.Particles;

import javax.vecmath.Vector3f;
import javax.vecmath.Vector4f;

/**
 * @author AndyGFX
 * 
 */
public class TF3D_Particle_item
{
	public int      sprite_id      = -1;
	public Vector4f color_start    = new Vector4f(1, 1, 1, 1);
	public Vector4f color_end      = new Vector4f(1, 1, 1, 1);
	public Vector3f size_start     = new Vector3f(1, 1, 1);
	public Vector3f size_end       = new Vector3f(1, 1, 1);
	public float    rotation_speed = 0;

	public TF3D_Particle_item()
	{
		
	}
}

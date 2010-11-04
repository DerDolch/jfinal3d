package AGFX.F3D.Math;

import javax.vecmath.Quat4f;
import javax.vecmath.Vector3f;

import AGFX.F3D.F3D;

public class TF3D_MathUtils 
{
	public  TF3D_MathUtils()
	{
		
	}
	
	public static Vector3f Quad2Angles(Quat4f q)
	{
		float angles[] = new float[3];

		float sqw = q.w * q.w;
		float sqx = q.x * q.x;
		float sqy = q.y * q.y;
		float sqz = q.z * q.z;
		float unit = sqx + sqy + sqz + sqw; // if normalized is one, otherwise
											// is correction factor
		float test = q.x * q.y + q.z * q.w;
		if (test > 0.499 * unit) { // singularity at north pole
			angles[1] = (float) (2f * Math.atan2(q.x, q.w));
			angles[2] = (float) (Math.PI*0.5f);
			angles[0] = 0;
		} else if (test < -0.499 * unit) { // singularity at south pole
			angles[1] = (float) (-2f * Math.atan2(q.x, q.w));
			angles[2] = (float) (-Math.PI*0.5f);
			angles[0] = 0;
		} else 
		{
			// Y axis
			angles[1] = (float) Math.atan2(2 * q.y * q.w - 2 * q.x * q.z, sqx - sqy - sqz + sqw); // roll or heading 
			// Z axis
			angles[2] = (float) Math.asin(2 * test / unit); // pitch or attitude
			// X
			angles[0] = (float) Math.atan2(2 * q.x * q.w - 2 * q.y * q.z, -sqx + sqy - sqz + sqw); // yaw or bank
		}
		return new Vector3f(angles[0],angles[1],angles[2]);
	

	}
	
	// TODO check convert from angles to Quat4f !!!!
	public static Quat4f AnglesToQuat4f(float yaw, float roll, float pitch)
	{

		Quat4f q = new Quat4f();
		float angle;
		float sinRoll, sinPitch, sinYaw, cosRoll, cosPitch, cosYaw;
		angle = pitch * 0.5f * F3D.DEGTORAD;
		sinPitch = (float) Math.sin(angle);
		cosPitch = (float) Math.cos(angle);
		angle = roll * 0.5f * F3D.DEGTORAD;
		sinRoll = (float) Math.sin(angle);
		cosRoll = (float) Math.cos(angle);
		angle = yaw * 0.5f * F3D.DEGTORAD;
		sinYaw = (float) Math.sin(angle);
		cosYaw = (float) Math.cos(angle);

		// variables used to reduce multiplication calls.
		float cosRollXcosPitch = cosRoll * cosPitch;
		float sinRollXsinPitch = sinRoll * sinPitch;
		float cosRollXsinPitch = cosRoll * sinPitch;
		float sinRollXcosPitch = sinRoll * cosPitch;

		q.w = (cosRollXcosPitch * cosYaw - sinRollXsinPitch * sinYaw);
		q.x = (cosRollXcosPitch * sinYaw + sinRollXsinPitch * cosYaw);
		q.y = (sinRollXcosPitch * cosYaw + cosRollXsinPitch * sinYaw);
		q.z = (cosRollXsinPitch * cosYaw - sinRollXcosPitch * sinYaw);

		return q;
	}
}

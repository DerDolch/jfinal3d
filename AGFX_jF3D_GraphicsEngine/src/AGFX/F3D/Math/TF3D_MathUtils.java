package AGFX.F3D.Math;

import javax.vecmath.Quat4f;
import javax.vecmath.Vector3f;
import com.bulletphysics.linearmath.QuaternionUtil;

import AGFX.F3D.F3D;

public class TF3D_MathUtils
{
	public TF3D_MathUtils()
	{

	}


	public static Vector3f Quad2Angles(Quat4f q)
	{
		/*
		 * Heading = rotation about y axis Attitude = rotation about z axis Bank
		 * = rotation about x axis
		 */

		float angles[] = new float[3];

		float sqw = q.w * q.w;
		float sqx = q.x * q.x;
		float sqy = q.y * q.y;
		float sqz = q.z * q.z;
		float unit = sqx + sqy + sqz + sqw; // if normalized is one, otherwise
		                                    // is correction factor
		float test = q.x * q.y + q.z * q.w;
		if (test > 0.499 * unit)
		{ // singularity at north pole
			angles[1] = (float) (2f * Math.atan2(q.x, q.w));
			angles[2] = (float) (Math.PI * 0.5f);
			angles[0] = 0;
		} else if (test < -0.499 * unit)
		{ // singularity at south pole
			angles[1] = (float) (-2f * Math.atan2(q.x, q.w));
			angles[2] = (float) (-Math.PI * 0.5f);
			angles[0] = 0;
		} else
		{
			// X
			angles[0] = (float) Math.atan2(2 * q.x * q.w - 2 * q.y * q.z, -sqx + sqy - sqz + sqw); // yaw
																								   // or
																								   // bank
			// Y axis
			angles[1] = (float) Math.atan2(2 * q.y * q.w - 2 * q.x * q.z, sqx - sqy - sqz + sqw); // roll
																								  // or
																								  // heading
			// Z axis
			angles[2] = (float) Math.asin(2 * test / unit); // pitch or attitude

		}

		/*
		 * QuaternionUtil.setRotation(q, new Vector3f(1,0,0), angles[0]);
		 * QuaternionUtil.setRotation(q, new Vector3f(0,1,0), angles[1]);
		 * QuaternionUtil.setRotation(q, new Vector3f(0,0,1), angles[2]);
		 */
		return new Vector3f(360f - angles[0] * F3D.RADTODEG, 360f - angles[1] * F3D.RADTODEG, 360f - angles[2] * F3D.RADTODEG);

	}

	public static Quat4f AnglesToQuat4f(float yaw, float roll, float pitch)
	{

		Quat4f q = new Quat4f();
		QuaternionUtil.setEuler(q, roll * F3D.DEGTORAD, yaw * F3D.DEGTORAD, pitch * F3D.DEGTORAD);
		return q;
	}
}

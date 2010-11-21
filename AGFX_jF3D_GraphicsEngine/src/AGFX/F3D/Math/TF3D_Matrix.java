/**
 * 
 */
package AGFX.F3D.Math;

import java.nio.FloatBuffer;

import javax.vecmath.Vector3f;

import AGFX.F3D.F3D;

/**
 * @author AndyGFX
 * 
 */
public class TF3D_Matrix
{

	public float[][]	grid	= new float[4][4];

	public TF3D_Matrix()
	{

	}

	// -----------------------------------------------------------------------
	// TF3D_Matrix:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 */
	// -----------------------------------------------------------------------
	public void LoadIdentity()
	{
		this.grid[0][0] = 1.0f;
		this.grid[1][0] = 0.0f;
		this.grid[2][0] = 0.0f;
		this.grid[3][0] = 0.0f;
		this.grid[0][1] = 0.0f;
		this.grid[1][1] = 1.0f;
		this.grid[2][1] = 0.0f;
		this.grid[3][1] = 0.0f;
		this.grid[0][2] = 0.0f;
		this.grid[1][2] = 0.0f;
		this.grid[2][2] = 1.0f;
		this.grid[3][2] = 0.0f;

		this.grid[0][3] = 0.0f;
		this.grid[1][3] = 0.0f;
		this.grid[2][3] = 0.0f;
		this.grid[3][3] = 1.0f;

	}

	// -----------------------------------------------------------------------
	// TF3D_Matrix:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @return
	 */
	// -----------------------------------------------------------------------
	public TF3D_Matrix Copy()
	{
		TF3D_Matrix mat = new TF3D_Matrix();

		mat.grid[0][0] = grid[0][0];
		mat.grid[1][0] = grid[1][0];
		mat.grid[2][0] = grid[2][0];
		mat.grid[3][0] = grid[3][0];
		mat.grid[0][1] = grid[0][1];
		mat.grid[1][1] = grid[1][1];
		mat.grid[2][1] = grid[2][1];
		mat.grid[3][1] = grid[3][1];
		mat.grid[0][2] = grid[0][2];
		mat.grid[1][2] = grid[1][2];
		mat.grid[2][2] = grid[2][2];
		mat.grid[3][2] = grid[3][2];

		// ' do not remove
		mat.grid[0][3] = grid[0][3];
		mat.grid[1][3] = grid[1][3];
		mat.grid[2][3] = grid[2][3];
		mat.grid[3][3] = grid[3][3];

		return mat;
	}

	// -----------------------------------------------------------------------
	// TF3D_Matrix:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param mat
	 */
	// -----------------------------------------------------------------------
	public void Overwrite(TF3D_Matrix mat)
	{

		this.grid[0][0] = mat.grid[0][0];
		this.grid[1][0] = mat.grid[1][0];
		this.grid[2][0] = mat.grid[2][0];
		this.grid[3][0] = mat.grid[3][0];
		this.grid[0][1] = mat.grid[0][1];
		this.grid[1][1] = mat.grid[1][1];
		this.grid[2][1] = mat.grid[2][1];
		this.grid[3][1] = mat.grid[3][1];
		this.grid[0][2] = mat.grid[0][2];
		this.grid[1][2] = mat.grid[1][2];
		this.grid[2][2] = mat.grid[2][2];
		this.grid[3][2] = mat.grid[3][2];

		// ' do not remove
		this.grid[0][3] = mat.grid[0][3];
		this.grid[1][3] = mat.grid[1][3];
		this.grid[2][3] = mat.grid[2][3];
		this.grid[3][3] = mat.grid[3][3];

	}

	// -----------------------------------------------------------------------
	// TF3D_Matrix:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @return
	 */
	// -----------------------------------------------------------------------
	public TF3D_Matrix Inverse()
	{
		TF3D_Matrix mat = new TF3D_Matrix();

		float tx = 0f;
		float ty = 0f;
		float tz = 0f;

		// ' The rotational part of the matrix is simply the transpose of the
		// ' original matrix.
		mat.grid[0][0] = grid[0][0];
		mat.grid[1][0] = grid[0][1];
		mat.grid[2][0] = grid[0][2];

		mat.grid[0][1] = grid[1][0];
		mat.grid[1][1] = grid[1][1];
		mat.grid[2][1] = grid[1][2];

		mat.grid[0][2] = grid[2][0];
		mat.grid[1][2] = grid[2][1];
		mat.grid[2][2] = grid[2][2];

		// ' The right column vector of the matrix should always be [ 0 0 0 1 ]
		// ' in most cases. . . you don't need this column at all because it'll
		// ' never be used in the program, but since this code is used with GL
		// ' and it does consider this column, it is here.
		mat.grid[0][3] = 0f;
		mat.grid[1][3] = 0f;
		mat.grid[2][3] = 0f;
		mat.grid[3][3] = 1f;

		// ' The translation components of the original matrix.
		tx = grid[3][0];
		ty = grid[3][1];
		tz = grid[3][2];

		// ' Result = -(Tm * Rm) To get the translation part of the inverse
		mat.grid[3][0] = -((grid[0][0] * tx) + (grid[0][1] * ty) + (grid[0][2] * tz));
		mat.grid[3][1] = -((grid[1][0] * tx) + (grid[1][1] * ty) + (grid[1][2] * tz));
		mat.grid[3][2] = -((grid[2][0] * tx) + (grid[2][1] * ty) + (grid[2][2] * tz));

		return mat;

	}

	public void Multiply(TF3D_Matrix mat)
	{
		float m00 = grid[0][0] * mat.grid[0][0] + grid[1][0] * mat.grid[0][1] + grid[2][0] * mat.grid[0][2] + grid[3][0] * mat.grid[0][3];
		float m01 = grid[0][1] * mat.grid[0][0] + grid[1][1] * mat.grid[0][1] + grid[2][1] * mat.grid[0][2] + grid[3][1] * mat.grid[0][3];
		float m02 = grid[0][2] * mat.grid[0][0] + grid[1][2] * mat.grid[0][1] + grid[2][2] * mat.grid[0][2] + grid[3][2] * mat.grid[0][3];
		// float m03 = grid[0][3]*mat.grid[0][0] + grid[1][3]*mat.grid[0][1] +
		// grid[2][3]*mat.grid[0][2] + grid[3][3]*mat.grid[0][3]
		float m10 = grid[0][0] * mat.grid[1][0] + grid[1][0] * mat.grid[1][1] + grid[2][0] * mat.grid[1][2] + grid[3][0] * mat.grid[1][3];
		float m11 = grid[0][1] * mat.grid[1][0] + grid[1][1] * mat.grid[1][1] + grid[2][1] * mat.grid[1][2] + grid[3][1] * mat.grid[1][3];
		float m12 = grid[0][2] * mat.grid[1][0] + grid[1][2] * mat.grid[1][1] + grid[2][2] * mat.grid[1][2] + grid[3][2] * mat.grid[1][3];
		// float m13 = grid[0][3]*mat.grid[1][0] + grid[1][3]*mat.grid[1][1] +
		// grid[2][3]*mat.grid[1][2] + grid[3][3]*mat.grid[1][3]
		float m20 = grid[0][0] * mat.grid[2][0] + grid[1][0] * mat.grid[2][1] + grid[2][0] * mat.grid[2][2] + grid[3][0] * mat.grid[2][3];
		float m21 = grid[0][1] * mat.grid[2][0] + grid[1][1] * mat.grid[2][1] + grid[2][1] * mat.grid[2][2] + grid[3][1] * mat.grid[2][3];
		float m22 = grid[0][2] * mat.grid[2][0] + grid[1][2] * mat.grid[2][1] + grid[2][2] * mat.grid[2][2] + grid[3][2] * mat.grid[2][3];
		// float m23 = grid[0][3]*mat.grid[2][0] + grid[1][3]*mat.grid[2][1] +
		// grid[2][3]*mat.grid[2][2] + grid[3][3]*mat.grid[2][3]
		float m30 = grid[0][0] * mat.grid[3][0] + grid[1][0] * mat.grid[3][1] + grid[2][0] * mat.grid[3][2] + grid[3][0] * mat.grid[3][3];
		float m31 = grid[0][1] * mat.grid[3][0] + grid[1][1] * mat.grid[3][1] + grid[2][1] * mat.grid[3][2] + grid[3][1] * mat.grid[3][3];
		float m32 = grid[0][2] * mat.grid[3][0] + grid[1][2] * mat.grid[3][1] + grid[2][2] * mat.grid[3][2] + grid[3][2] * mat.grid[3][3];
		// float m33 = grid[0][3]*mat.grid[3][0] + grid[1][3]*mat.grid[3][1] +
		// grid[2][3]*mat.grid[3][2] + grid[3][3]*mat.grid[3][3]

		grid[0][0] = m00;
		grid[0][1] = m01;
		grid[0][2] = m02;
		// grid[0][3]=m03;
		grid[1][0] = m10;
		grid[1][1] = m11;
		grid[1][2] = m12;
		// grid[1][3]=m13;
		grid[2][0] = m20;
		grid[2][1] = m21;
		grid[2][2] = m22;
		// grid[2][3]=m23;
		grid[3][0] = m30;
		grid[3][1] = m31;
		grid[3][2] = m32;
		// grid[3][3]=m33;

	}

	public void Translate(Vector3f v)
	{
		this.Translate(v.x, v.y, v.z);
		
	}
	
	public void Translate(float x, float y, float z)
	{
		grid[3][0] = grid[0][0] * x + grid[1][0] * y + grid[2][0] * z + grid[3][0];
		grid[3][1] = grid[0][1] * x + grid[1][1] * y + grid[2][1] * z + grid[3][1];
		grid[3][2] = grid[0][2] * x + grid[1][2] * y + grid[2][2] * z + grid[3][2];
	}

	public void Scale(Vector3f v)
	{
		this.Scale(v.x, v.y, v.z);
		
	}
	
	public void Scale(float x, float y, float z)
	{
		grid[0][0] = grid[0][0] * x;
		grid[0][1] = grid[0][1] * x;
		grid[0][2] = grid[0][2] * x;

		grid[1][0] = grid[1][0] * y;
		grid[1][1] = grid[1][1] * y;
		grid[1][2] = grid[1][2] * y;

		grid[2][0] = grid[2][0] * z;
		grid[2][1] = grid[2][1] * z;
		grid[2][2] = grid[2][2] * z;
	}

	public void Rotate(Vector3f v)
	{
		this.Rotate(v.x, v.y, v.z);
		
	}
	
	public void Rotate(float rx, float ry, float rz)
	{
		float cos_ang;
		float sin_ang;

		// yaw

		cos_ang = (float) Math.cos(ry);
		sin_ang = (float) Math.sin(ry);

		float m00 = grid[0][0] * cos_ang + grid[2][0] * -sin_ang;
		float m01 = grid[0][1] * cos_ang + grid[2][1] * -sin_ang;
		float m02 = grid[0][2] * cos_ang + grid[2][2] * -sin_ang;

		grid[2][0] = grid[0][0] * sin_ang + grid[2][0] * cos_ang;
		grid[2][1] = grid[0][1] * sin_ang + grid[2][1] * cos_ang;
		grid[2][2] = grid[0][2] * sin_ang + grid[2][2] * cos_ang;

		grid[0][0] = m00;
		grid[0][1] = m01;
		grid[0][2] = m02;

		// pitch

		cos_ang = (float) Math.cos(rx);
		sin_ang = (float) Math.sin(rx);

		float m10 = grid[1][0] * cos_ang + grid[2][0] * sin_ang;
		float m11 = grid[1][1] * cos_ang + grid[2][1] * sin_ang;
		float m12 = grid[1][2] * cos_ang + grid[2][2] * sin_ang;

		grid[2][0] = grid[1][0] * -sin_ang + grid[2][0] * cos_ang;
		grid[2][1] = grid[1][1] * -sin_ang + grid[2][1] * cos_ang;
		grid[2][2] = grid[1][2] * -sin_ang + grid[2][2] * cos_ang;

		grid[1][0] = m10;
		grid[1][1] = m11;
		grid[1][2] = m12;

		// roll

		cos_ang = (float) Math.cos(rz);
		sin_ang = (float) Math.sin(rz);

		m00 = grid[0][0] * cos_ang + grid[1][0] * sin_ang;
		m01 = grid[0][1] * cos_ang + grid[1][1] * sin_ang;
		m02 = grid[0][2] * cos_ang + grid[1][2] * sin_ang;

		grid[1][0] = grid[0][0] * -sin_ang + grid[1][0] * cos_ang;
		grid[1][1] = grid[0][1] * -sin_ang + grid[1][1] * cos_ang;
		grid[1][2] = grid[0][2] * -sin_ang + grid[1][2] * cos_ang;

		grid[0][0] = m00;
		grid[0][1] = m01;
		grid[0][2] = m02;
	}

	public void RotatePitch(float ang)
	{
		float cos_ang = (float) Math.cos(ang);
		float sin_ang = (float) Math.sin(ang);

		float m10 = grid[1][0] * cos_ang + grid[2][0] * sin_ang;
		float m11 = grid[1][1] * cos_ang + grid[2][1] * sin_ang;
		float m12 = grid[1][2] * cos_ang + grid[2][2] * sin_ang;

		grid[2][0] = grid[1][0] * -sin_ang + grid[2][0] * cos_ang;
		grid[2][1] = grid[1][1] * -sin_ang + grid[2][1] * cos_ang;
		grid[2][2] = grid[1][2] * -sin_ang + grid[2][2] * cos_ang;

		grid[1][0] = m10;
		grid[1][1] = m11;
		grid[1][2] = m12;
	}

	public void RotateYaw(float ang)
	{
		float cos_ang = (float) Math.cos(ang);
		float sin_ang = (float) Math.sin(ang);

		float m00 = grid[0][0] * cos_ang + grid[2][0] * -sin_ang;
		float m01 = grid[0][1] * cos_ang + grid[2][1] * -sin_ang;
		float m02 = grid[0][2] * cos_ang + grid[2][2] * -sin_ang;

		grid[2][0] = grid[0][0] * sin_ang + grid[2][0] * cos_ang;
		grid[2][1] = grid[0][1] * sin_ang + grid[2][1] * cos_ang;
		grid[2][2] = grid[0][2] * sin_ang + grid[2][2] * cos_ang;

		grid[0][0] = m00;
		grid[0][1] = m01;
		grid[0][2] = m02;
	}

	public void RotateRoll(float ang)
	{
		float cos_ang = (float) Math.cos(ang);
		float sin_ang = (float) Math.sin(ang);

		float m00 = grid[0][0] * cos_ang + grid[1][0] * sin_ang;
		float m01 = grid[0][1] * cos_ang + grid[1][1] * sin_ang;
		float m02 = grid[0][2] * cos_ang + grid[1][2] * sin_ang;

		grid[1][0] = grid[0][0] * -sin_ang + grid[1][0] * cos_ang;
		grid[1][1] = grid[0][1] * -sin_ang + grid[1][1] * cos_ang;
		grid[1][2] = grid[0][2] * -sin_ang + grid[1][2] * cos_ang;

		grid[0][0] = m00;
		grid[0][1] = m01;
		grid[0][2] = m02;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	public String toString()
	{
		String Complete = "\n";
		String Row = "";

		for (int Y = 0; Y < 4; Y++)
		{
			for (int X = 0; X < 4; X++)
			{
				Row = Row + String.valueOf(grid[X][Y]) + " ";
			}

			Complete = Complete + Row + "\n";
			Row = "";
		}

		return Complete;
	}
	
	public float[] toFloat()
	{
		float[] res = new float[16];
		int i=0;
		for (int Y = 0; Y < 4; Y++)
		{
			for (int X = 0; X < 4; X++)
			{
				 res[i] = grid[X][Y];
				 i++;
			}
		}
		
		return res;
	}
	
	
	public FloatBuffer toFloatBuffer()
	{
		float[] res = new float[16];
		int i=0;
		for (int Y = 0; Y < 4; Y++)
		{
			for (int X = 0; X < 4; X++)
			{
				 res[i] = grid[X][Y];
				 i++;
			}
		}
		
		return F3D.GetBuffer.Float(res);
	}
}
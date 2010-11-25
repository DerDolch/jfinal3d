// -----------------------------------------------------------------------
// A3D_Axis3f:
// -----------------------------------------------------------------------
package AGFX.F3D.Math;

import javax.vecmath.Vector3f;

import AGFX.F3D.F3D;


public class TF3D_Axis3f
{
	public Vector3f	_forward;
	public Vector3f	_right;
	public Vector3f	_up;

	// -----------------------------------------------------------------------
	// A3D_Axis3f: constructor
	// -----------------------------------------------------------------------
	public TF3D_Axis3f()
	{
		this._forward = new Vector3f(0.0f, 0.0f, 1.0f);
		this._right = new Vector3f(1.0f, 0.0f, 0.0f);
		this._up = new Vector3f(0.0f, 1.0f, 0.0f);

	}

	// -----------------------------------------------------------------------
	// A3D_Axis3f: calc direction vectors from angles
	// -----------------------------------------------------------------------
	public void GetFromEuler(Vector3f angles)
	{
		
		this.GetFromEuler(angles.x, angles.y, angles.z);
		
	}

	// -----------------------------------------------------------------------
	// A3D_Axis3f: calc dir. vector wrom angles
	// -----------------------------------------------------------------------
	public void GetFromEuler(float _x, float _y, float _z)
	{
		
		double a, b, c, d, e, f, ad, bd;

		a = Math.cos(0.0174532925f * _x);
		b = Math.sin(0.0174532925f * _x);
		c = Math.cos(0.0174532925f * _y);
		d = Math.sin(0.0174532925f * _y);
		e = Math.cos(0.0174532925f * _z);
		f = Math.sin(0.0174532925f * _z);

		ad = a * d;
		bd = b * d;

		this._right.x = (float) (c * e);
		this._right.y = (float) (-c * f);
		this._right.z = (float) d;

		this._up.x = (float) (bd * e + a * f);
		this._up.y = (float) (-bd * f + a * e);
		this._up.z = (float) (-b * c);

		this._forward.x = (float) (-ad * e + b * f);
		this._forward.y = (float) (ad * f + b * e);
		this._forward.z = (float) (a * c);
		
		
		/*
		TF3D_Matrix mat = new TF3D_Matrix();
		
		mat.LoadIdentity();
		
		mat.Rotate(_x*F3D.DEGTORAD,_y*F3D.DEGTORAD,_z*F3D.DEGTORAD);
		
		this._right.x = mat.grid[0][0];
		this._right.y = mat.grid[1][0];
		this._right.z = mat.grid[2][0];
		
		this._up.x = mat.grid[0][1];
		this._up.y = mat.grid[1][1];
		this._up.z = mat.grid[2][1];
		
		this._forward.x = mat.grid[0][2];
		this._forward.y = mat.grid[1][2];
		this._forward.z = mat.grid[2][2];
		*/
		
		
		
		
	}
	
}

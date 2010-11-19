/**
 * 
 */
package AGFX.F3D.Math;

/**
 * @author AndyGFX
 * 
 */
public class TF3D_Matrix
{

	public float[][] grid = new float[4][4];

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

	/* (non-Javadoc)
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
}

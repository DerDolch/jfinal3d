/**
 * 
 */
package AGFX.F3D.Material;

import javax.vecmath.*;

import AGFX.F3D.F3D;

/**
 * @author AndyGFX
 * 
 */
public class TF3D_Material
{

	public String                   name           = "none";
	public int                      typ            = F3D.MAT_TYPE_TEXTURE;
	public Vector4f                 color          = new Vector4f(1, 1, 1, 1);
	public float                    diffuse[]      = new float[] { 1.0f, 0.0f, 0.0f, 1.0f };

	public TF3D_MaterialTextureUnit texture_unit[] = new TF3D_MaterialTextureUnit[4];

	public Boolean                  HW_lighting    = false;
	public Boolean                  bAlphaTest     = false;
	public Boolean                  bDepthTest     = false;
	public Boolean                  bFaceCulling   = false;
/*
	public String                   shader_name    = "none";
	public int                      shader_id      = -1;
	public Boolean                  use_shader     = false;
*/
	// -----------------------------------------------------------------------
	// TA3D_Material:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * constructor <BR>
	 * -------------------------------------------------------------------<BR>
	 */
	// -----------------------------------------------------------------------
	public TF3D_Material()
	{
		F3D.Log.info("TF3D_Material", "Create - constructor");

		this.texture_unit[0] = new TF3D_MaterialTextureUnit();
		this.texture_unit[1] = new TF3D_MaterialTextureUnit();
		this.texture_unit[2] = new TF3D_MaterialTextureUnit();
		this.texture_unit[3] = new TF3D_MaterialTextureUnit();
	}

	// -----------------------------------------------------------------------
	// TA3D_Material:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Create copy of material <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @return material
	 */
	// -----------------------------------------------------------------------
	public TF3D_Material Copy()
	{
		TF3D_Material m = new TF3D_Material();

		try
		{
			m = (TF3D_Material) this.clone();
		} catch (CloneNotSupportedException e)
		{
			e.printStackTrace();
		}

		return m;
	}

}

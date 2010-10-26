package AGFX.F3D.Mesh;

import java.util.ArrayList;

import AGFX.F3D.F3D;

public class TF3D_Indices
{
	public String material_name;
	public int material_id=-1;
	public ArrayList<Short> indices_list;
	public short indices[];
	
	public TF3D_Indices(String mat_name)
	{
		this.material_id = F3D.Surfaces.FindByName(mat_name);
		this.material_name = mat_name;
		this.indices_list = new ArrayList<Short>();
	}
	
	
}

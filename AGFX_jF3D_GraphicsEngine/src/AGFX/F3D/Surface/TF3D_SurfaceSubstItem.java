package AGFX.F3D.Surface;

import AGFX.F3D.F3D;

public class TF3D_SurfaceSubstItem
{
	public String name;
	public int id;
	
	public TF3D_SurfaceSubstItem( String sname,int sid)
	{
		this.name = sname;
		this.id = sid;
	}
	
	public void ChangeTo(String new_sname)
	{
		this.name = new_sname;
		this.id = F3D.Surfaces.FindByName(this.name);
	}
}

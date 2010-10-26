package AGFX.F3D.Mesh;

import java.util.ArrayList;

public class TF3D_IndicesGroup
{
	public ArrayList<TF3D_Indices>	items;

	public TF3D_IndicesGroup()
	{
		this.items = new ArrayList<TF3D_Indices>();
	}

	private void AddGroup(String mat_name)
	{
		TF3D_Indices idx = new TF3D_Indices(mat_name);
		this.items.add(idx);
	}

	private int FindGroupByName(String gname)
	{
		for (int i = 0; i < this.items.size(); i++)
		{
			if (this.items.get(i).material_name.equalsIgnoreCase(gname))
			{
				return i;
			}
		}

		return -1;
	}

	public void AddIndexToGroup(String gname, Short iA, Short iB, Short iC)
	{
		int g_id = this.FindGroupByName(gname);

		if (g_id == -1)
		{
			// when missing - create new indices group
			this.AddGroup(gname);
			g_id = this.FindGroupByName(gname);
			this.items.get(g_id).indices_list.add(iA);
			this.items.get(g_id).indices_list.add(iB);
			this.items.get(g_id).indices_list.add(iC);
		} else
		{
			// add new indices to existing group
			this.items.get(g_id).indices_list.add(iA);
			this.items.get(g_id).indices_list.add(iB);
			this.items.get(g_id).indices_list.add(iC);
		}
	}
	
	public void AddIndexToGroup(String gname, int idx)
	{
		int g_id = this.FindGroupByName(gname);
		
		
		if (g_id == -1)
		{
			// when missing - create new indices group
			this.AddGroup(gname);
			g_id = this.FindGroupByName(gname);
			this.items.get(g_id).indices_list.add((short) (idx+0));
			this.items.get(g_id).indices_list.add((short) (idx+1));
			this.items.get(g_id).indices_list.add((short) (idx+2));
		} else
		{
			// add new indices to existing group
			this.items.get(g_id).indices_list.add((short) (idx+0));
			this.items.get(g_id).indices_list.add((short) (idx+1));
			this.items.get(g_id).indices_list.add((short) (idx+2));
		}
	}
}

/**
 * 
 */
package AGFX.F3D.Model;


import javax.vecmath.Vector3f;

import AGFX.F3D.F3D;
import AGFX.F3D.Entity.TF3D_Entity;
import static org.lwjgl.opengl.GL11.*;

/**
 * @author AndyGFX
 * 
 */

public class TF3D_Model extends TF3D_Entity
{

	private int				mesh_id = -1;
	private int				surface_id = -1;
	

	
	
	public TF3D_Model(String _name)
	{
		this.classname = F3D.CLASS_MODEL;
		this.name = _name;
	}
	
	

	// -----------------------------------------------------------------------
	// TA3D_Mesh: 
	// -----------------------------------------------------------------------
	/**
	 * <BR>-------------------------------------------------------------------<BR> 
	 *  Calculate BBOX values for Frustum culling
	 * <BR>-------------------------------------------------------------------<BR> 
	 */
	// -----------------------------------------------------------------------
	public void CalcBBox( )
	{
		
		int v_count = F3D.Meshes.items.get(this.mesh_id).data.vertices.length / 3;
		
		Vector3f max = new Vector3f(-9999,-9999,-9999);
		Vector3f min = new Vector3f(9999,9999,9999);
		
		for(int i=0;i<v_count;i++)
		{
			Vector3f v = F3D.Meshes.items.get(this.mesh_id).data.GetVertexAsVector(i);
			
			max.x = v.x >= max.x ? v.x : max.x;
			max.y = v.y >= max.y ? v.y : max.y;
			max.z = v.z >= max.z ? v.z : max.z;
			
			min.x = v.x <= min.x ? v.x : min.x;
			min.y = v.y <= min.y ? v.y : min.y;
			min.z = v.z <= min.z ? v.z : min.z;
			
		}
		
		this.BBOX_size.sub(max,min);
		this.BBOX_center.add(max, min);
		this.BBOX_center.scale(2.0f);
		
	}
	
	public void AssignMesh(int id)
	{
		this.mesh_id = id;
		this.CalcBBox();
	}
	
	public void AssignMesh(String name)
	{
		this.mesh_id = F3D.Meshes.FindByName(name);
		this.CalcBBox();
	}

	public void SetSurface(String name)
	{
		this.surface_id = F3D.Surfaces.FindByName(name);
		
	}
	// -----------------------------------------------------------------------
	// TA3D_Mesh: 
	// -----------------------------------------------------------------------
	/**
	 * <BR>-------------------------------------------------------------------<BR> 
	 *  Render Mesh
	 * <BR>-------------------------------------------------------------------<BR> 
	 */
	// -----------------------------------------------------------------------
	
	public void Render()
	{
		int mid;
		
		if (this.IsEnabled())
		{
    		if (this.IsVisible())
    		{
    			if (this.surface_id<0)
    			{
    				mid = F3D.Meshes.items.get(this.mesh_id).data.material_id;
    			}
    			else
    			{
    				mid = this.surface_id;
    			}
    			
    			if (mid >= 0)
    			{
    				F3D.Surfaces.ApplyMaterial(mid);
    			}
    
    			glPushMatrix();
    
    			glScalef(this.GetScale().x, this.GetScale().y, this.GetScale().z);
    			glTranslatef(this.GetPosition().x, this.GetPosition().y, this.GetPosition().z);
    
    			glRotatef(this.GetRotation().x, 1.0f, 0.0f, 0.0f);
    			glRotatef(this.GetRotation().y, 0.0f, 1.0f, 0.0f);
    			glRotatef(this.GetRotation().z, 0.0f, 0.0f, 1.0f);
    
    		
    			if (this.mesh_id>=0)
    			{
    				F3D.Meshes.items.get(this.mesh_id).Render();
    			}
    			
    			
    			// render childs
    			for (int i = 0; i < this.childs.size(); i++)
    			{
    				this.childs.get(i).Render();
    			}
    			
    			glScalef(1, 1, 1);
    			glPopMatrix();
    		}
		}
	}



	/* (non-Javadoc)
     * @see AGFX.F3D.Entity.TF3D_Entity#Update()
     */
    @Override
    public void Update()
    {
	    // TODO Auto-generated method stub
	    
    }



	@Override
	public void Destroy() {
		// TODO Auto-generated method stub
		
	}

}

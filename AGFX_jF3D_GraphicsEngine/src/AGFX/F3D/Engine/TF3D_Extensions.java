package AGFX.F3D.Engine;

import org.lwjgl.opengl.GLContext;

import AGFX.F3D.F3D;

public class TF3D_Extensions
{
	public Boolean VertexBufferObject;
	
	public TF3D_Extensions()
	{
		F3D.Log.info("TF3D_Extensions", "Create - constructor");
		
		// GL_ARB_vertex_buffer_object
		this.VertexBufferObject =   GLContext.getCapabilities().GL_ARB_vertex_buffer_object;
		F3D.Log.info("TF3D_Extensions","GL_ARB_vertex_buffer_object = "+this.VertexBufferObject.toString());
	
	}
}

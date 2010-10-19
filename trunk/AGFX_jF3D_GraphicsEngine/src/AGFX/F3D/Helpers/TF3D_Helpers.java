/**
 * 
 */
package AGFX.F3D.Helpers;

import javax.vecmath.Vector3f;

import AGFX.F3D.F3D;

import static org.lwjgl.opengl.GL11.*;

/**
 * @author AndyGFX
 *
 */
public class TF3D_Helpers
{
	
	public TF3D_Helpers()
	{
		F3D.Log.info("TF3D_Helpers", "Create - constructor");
	}
	
	public void Rectangle(float X1,float Y1,float X2,float Y2)
	{
		
		glBegin(GL_QUADS);
		glTexCoord2f(0.0f, 0.0f);
		glVertex3f(X1, Y1,0.0f);
		glTexCoord2f(1.0f, 0.0f);
		glVertex3f(X2, Y1,0.0f);
		glTexCoord2f(1.0f, 1.0f);
		glVertex3f(X2, Y2,0.0f);
		glTexCoord2f(0.0f, 1.0f);
		glVertex3f(X1, Y2,0.0f);
		glEnd();

	}
	
	public void QuadBySize(float X, float Y, float Wid, float Hgt, float Lev)
	{
		glBegin(GL_QUADS);
		glTexCoord2f(0.0f, 0.0f); glVertex3f(X,     Y, -Lev);
		glTexCoord2f(1.0f, 0.0f); glVertex3f(X+Wid, Y, -Lev);
		glTexCoord2f(1.0f, 1.0f); glVertex3f(X+Wid, Y+Hgt, -Lev);
		glTexCoord2f(0.0f, 1.0f); glVertex3f(X,     Y+Hgt, -Lev);
	    glEnd();

	}
	
	public void QuadBySizeAndUV(float X, float Y, float Wid, float Hgt, float Lev, float Tu, float Tu2, float Tv, float Tv2)
	{
		
		glBegin(GL_QUADS);
		glTexCoord2f( Tu,  Tv); glVertex3f(X,     Y, -Lev);
		glTexCoord2f(Tu2,  Tv); glVertex3f(X+Wid, Y, -Lev);
		glTexCoord2f(Tu2, Tv2); glVertex3f(X+Wid, Y+Hgt, -Lev);
		glTexCoord2f( Tu, Tv2); glVertex3f(X,     Y+Hgt, -Lev);
	    glEnd();
		
	}
	
	public void Line3D(Vector3f A, Vector3f B)
	{
		 glBegin(GL_LINES);		 
		    glVertex3f(A.x,A.y,A.z);
		    glVertex3f(B.x,B.y,B.z);
		  glEnd();

	}
	
	public void Line3D(float Ax, float Ay,float Az,float Bx, float By,float Bz)
	{
		 glBegin(GL_LINES);		 
		    glVertex3f(Ax,Ay,Az);
		    glVertex3f(Bx,By,Bz);
		  glEnd();

	}
	
	
	public void Axis(float size)
	{
			glPushMatrix();
    		   // X
    		   glColor3f(1,0,0);
    		   this.Line3D(0,0,0,size,0,0);
    		   // Y
    		   glColor3f(0,1,0);
    		   this.Line3D(0,0,0,0,size,0);
    		   // Z
    		   glColor3f(0,0,1);
    		   this.Line3D(0,0,0,0,0,size);
		   glPopMatrix();
		   
		   glColor3f(1,1,1);
	}

}

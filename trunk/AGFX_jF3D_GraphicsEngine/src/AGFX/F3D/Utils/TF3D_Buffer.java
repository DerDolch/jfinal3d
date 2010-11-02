package AGFX.F3D.Utils;

import java.nio.FloatBuffer;
import java.nio.IntBuffer;

import javax.vecmath.Vector3f;

import org.lwjgl.BufferUtils;

public class TF3D_Buffer
{
	public static FloatBuffer fB = BufferUtils.createFloatBuffer(4);
	public static IntBuffer iB = BufferUtils.createIntBuffer(4);
	
	
	public FloatBuffer Float(float[] f)
	{
		fB.clear();
		return (FloatBuffer) fB.put(f).flip();
		
	}
	
	public FloatBuffer Float(Vector3f v)
	{
		fB.clear();
		fB.put(v.x);
		fB.put(v.y);
		fB.put(v.z);
		fB.flip();
		
		return fB;
		
	}
}

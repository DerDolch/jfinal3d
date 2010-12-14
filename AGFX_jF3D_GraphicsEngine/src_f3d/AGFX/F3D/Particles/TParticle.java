package AGFX.F3D.Particles;

import javax.vecmath.Vector3f;
import AGFX.F3D.Entity.*;
import AGFX.F3D.Pivot.*;

public class TParticle
{

	public TF3D_Entity	Mesh;
	public TF3D_Pivot	Dummy;
	public Vector3f		Position;
	public Vector3f		Velocity;
	public Vector3f		Rotation;
	public Vector3f		WhirlStart;
	public Vector3f		WhirlEnd;
	public float		Friction;
	public Vector3f		Gravity;
	public Vector3f		ScaleStart;
	public Vector3f		ScaleEnf;
	public TQuad		Quad;
	public TEmitter		SecEmitter;

	public int			Life;
	public int			Death;
	public int			_Type;
	public TEmitter		Parent;

	public TParticle()
	{

	}

	public void Delete()
	{
		if (this.Dummy != null)
			this.Dummy = null;

		if (this.Mesh != null)
			this.Mesh = null;

		if (this.Parent != null)
			this.Parent = null;
		
		if (this.Quad != null)
			this.Quad = null;

	}
	
	public static TParticle Create(TF3D_Entity Mesh,Vector3f Position, Vector3f  Velocity, Vector3f  Rotation, int Death, float Friction,Vector3f  Gravity, TSSurface S, int type)
	{
		TParticle P = new TParticle();
		
		return null;
		
	}
	
}

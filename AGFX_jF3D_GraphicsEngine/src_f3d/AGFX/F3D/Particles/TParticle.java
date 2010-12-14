package AGFX.F3D.Particles;

import javax.vecmath.Vector3f;
import javax.vecmath.Vector4f;

import AGFX.F3D.F3D;
import AGFX.F3D.Billboard.TF3D_Billboard;
import AGFX.F3D.Entity.*;
import AGFX.F3D.Model.TF3D_Model;
import AGFX.F3D.Pivot.*;

public class TParticle
{

	public TF3D_Model Model;
	public TF3D_Pivot Dummy;
	public Vector3f   Position;
	public Vector3f   Velocity;
	public Vector3f   Rotation;
	public Vector3f   WhirlStart;
	public Vector3f   WhirlEnd;
	public float      Friction;
	public Vector3f   Gravity;
	public Vector3f   ScaleStart;
	public Vector3f   ScaleEnd;
	public TQuad      Quad;
	public TEmitter   SecEmitter;

	public int        Life;
	public int        Death;
	public int        _Type;
	public TEmitter   Parent;

	public TParticle()
	{

	}

	public void Delete()
	{
		if (this.Dummy != null)
			this.Dummy = null;

		if (this.Model != null)
			this.Model = null;

		if (this.Parent != null)
			this.Parent = null;

		if (this.Quad != null)
			this.Quad = null;

	}

	// -----------------------------------------------------------------------
	// TParticle:
	// -----------------------------------------------------------------------
	/**
	 * <BR>
	 * -------------------------------------------------------------------<BR>
	 * Create Particle <BR>
	 * -------------------------------------------------------------------<BR>
	 * 
	 * @param MeshName
	 *            - name
	 * @param Position
	 *            - position
	 * @param Velocity
	 *            - velocity
	 * @param Rotation
	 *            - rotation
	 * @param Death
	 *            - death time
	 * @param Friction
	 *            - friction time
	 * @param Gravity
	 *            - gravity
	 * @param S
	 *            - surface
	 * @param type
	 *            - type [F3D.EMITTER_MESH or F3D.EMITTER_SPRITE]
	 * @return particle
	 */
	// -----------------------------------------------------------------------
	public static TParticle Create(String MeshName, Vector3f Position, Vector3f Velocity, Vector3f Rotation, int Death, float Friction, Vector3f Gravity, TSSurface S, int type)
	{
		TParticle P = new TParticle();

		switch (type)
		{
		case F3D.EMITTER_MESH:
			P.Model = new TF3D_Model(MeshName);
			P.Model.SetPosition(Position, true);
			P.Dummy = new TF3D_Pivot("Pivot_" + MeshName);
			P.Dummy.AddChild(P.Model);
			break;

		case F3D.EMITTER_SPRITE:
			P.Quad = new TQuad();
			P.Position.set(Position);
			P.Dummy = new TF3D_Pivot("Pivot_" + MeshName);
			break;

		}

		P._Type = type;
		P.Position = new Vector3f(Position);
		P.Velocity = new Vector3f(Velocity);
		P.Rotation = new Vector3f(Rotation);
		P.Friction = Friction;
		P.Gravity = new Vector3f(Gravity);
		P.Death = Death;
		P.Life = F3D.Timer.GetTickCount();

		return P;
	}

	public Boolean Update()
	{
		int DeltaT = F3D.Timer.GetTickCount() - this.Life;
		float Rate = DeltaT / (float) this.Death;
		this.Velocity.scale(TParticleSystem.Friction);

		float ScaleX = F3D.MathUtils.UpdateValue(this.ScaleStart.x, this.ScaleEnd.x, Rate);
		float ScaleY = F3D.MathUtils.UpdateValue(this.ScaleStart.y, this.ScaleEnd.y, Rate);
		float ScaleZ = F3D.MathUtils.UpdateValue(this.ScaleStart.z, this.ScaleEnd.z, Rate);

		float R = F3D.MathUtils.UpdateValue(this.Parent.StartColor.x, Parent.EndColor.x, Rate);
		float G = F3D.MathUtils.UpdateValue(this.Parent.StartColor.y, Parent.EndColor.y, Rate);
		float B = F3D.MathUtils.UpdateValue(this.Parent.StartColor.z, Parent.EndColor.z, Rate);
		float A = Math.max((this.Parent.LowAlpha - Rate * (this.Parent.LowAlpha - Parent.HighAlpha)), 0);
		
		Vector4f Color = new Vector4f(R, G, B, A);

		float whirlx = (float) (Math.cos(DeltaT)*F3D.MathUtils.UpdateValue(this.WhirlStart.x,this.WhirlEnd.x,Rate));
		float whirly = (float) (-Math.cos(DeltaT)*F3D.MathUtils.UpdateValue(this.WhirlStart.y,this.WhirlEnd.y,Rate));
		float whirlz = (float) (Math.sin(DeltaT) * F3D.MathUtils.UpdateValue(this.WhirlStart.z,this.WhirlEnd.z,Rate));
		
		switch (this._Type)
		{
		case F3D.EMITTER_MESH:
			this.Model.SetPosition((whirlx+this.Velocity.x)*TParticleSystem.DeltaTime , (whirly+Velocity.y)*TParticleSystem.DeltaTime ,(whirlz+Velocity.z)*TParticleSystem.DeltaTime);
			
			if (!Parent.IgnoreGravity)
			{
				this.Model.SetPosition(TParticleSystem.Gravity.x*TParticleSystem.DeltaTime , TParticleSystem.Gravity.y*TParticleSystem.DeltaTime , TParticleSystem.Gravity.z*TParticleSystem.DeltaTime);
			}
			this.Model.Turn(this.Rotation);
			// TODO Particle
			// EntityAlpha(mesh , Alpha )
			//EntityColor(mesh,R,G,B)
			this.Model.SetScale(ScaleX , ScaleY , ScaleZ);
			
			break;

		case F3D.EMITTER_SPRITE:
			break;

		}

		return false;
	}

}

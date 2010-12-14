Const EMITTER_SPRITE:Int = 0
Const EMITTER_ENTITY:Int = 1
Const EMITTER_ACTION_DELAY:Int = 0
Const EMITTER_ACTION_TRIGGER:Int = 1

'Particle Engine

Type TParticleSystem
	Global Emitters:TList = New TList
	Global Particles:TList = New TList
	Global Effectors:TList = New TList
	'Particle Physics
	Global Gravity:TVector = TVector.Create(0 , - 9.81 , 0) 
	Global Friction:Float = 0.98
	Global DeathPlane:TVector = TVector.Create(0,0,0)
	Global Cam:TCamera
	Global DeltaTime:Float
	
	Function Update(Camera:TCamera , Delta:Float = 1.0)
		TParticleSystem.DeltaTime = Delta
		TParticleSystem.Cam = Camera	
		For Local E:TEmitter = EachIn Emitters
			E.Update()
			If E.CanFreed() = True And E.IsActive() = True Then 
				If E.SingleSurf <> Null Then E.SingleSurf.Free()
				E.Inactive_Particles.Clear()
				Emitters.Remove(E)
			EndIf
		Next	
	End Function
	
	Function GetParticleCount:Int()
		Return Particles.Count()
	End Function
	
	Function GetEmitterCount:Int()
		Return Emitters.Count()
	End Function
	
	Function AddEmitter:TEmitter(ES:TEmitter)
		Local E:TEmitter = ES.Copy()
		'Print "Death Emitter3" + " .. " + ES.Position.X + ":"+ ES.Position.Y + ":" + ES.Position.Z

		If E.Reference_Mesh <> Null Then
			EntityBlend(E.Reference_Mesh , E.Reference_BlendMode)
			EntityTexture(E.Reference_Mesh , E.Reference_Texture,0)
			'EntityFX(E.Reference_Mesh,2)
		EndIf
		If E.Emitter_Particle_Type = EMITTER_SPRITE Then
			'Print "Single Surface initiated"
			If E.SingleSurf = Null Then E.SingleSurf = TSSurface.Create()
			EntityBlend(E.SingleSurf.Parent , E.Reference_BlendMode)
			EntityTexture(E.SingleSurf.Parent , E.Reference_Texture , 0)
			EntityFX(E.SingleSurf.Parent , 2)
		EndIf
			
		Emitters.addlast(E)
		
		Return E
	End Function
	
	Function AddExistEmitter(E:TEmitter)
		If E.SingleSurf = Null Then E.SingleSurf = TSSurface.Create()
			EntityBlend(E.SingleSurf.Parent , E.Reference_BlendMode)
			EntityTexture(E.SingleSurf.Parent , E.Reference_Texture , 0)
			EntityFX(E.SingleSurf.Parent , 2)
		If E <> Null Then Emitters.addlast(E)
	End Function
	
End Type
	
Type TEmitter
	'Emitter Construction Related
	Field Emitter_Type:Int ' A lot of things will be added here (cubed area,Sphere area,Point, Spray etc)
	Field Emitter_Particle_Type:Int ' 2 Possibilitys: 0 = Entity based, 1 = Single surface Sprite Based
	Field Emitter_StartDelay:Int
	Field Emitter_Delay:Int
	Field Emitter_Rate:Int
	Field Emitter_Life:Int = - 1 ' -1 = Infinity, Other Values are related to the Delay
	
	'SingleSurface
	Field SingleSurf:TSSurface
	
	'Position etc
	Field Position:TVector
	Field OldPosition:TVector
	Field Parent:TEntity
	
	'Particle Generator Things
	Field LowVelocity:TVector
	Field HighVelocity:TVector
	
	Field LowRotation:TVector
	Field HighRotation:Tvector
	
	Field LowAlpha:Float
	Field HighAlpha:Float
	
	Field LowLife:Int
	Field HighLife:Int
	
	Field StartColor:TVector = TVector.Create(255,255,255)
	Field EndColor:TVector = TVector.Create(255,255,255)
	
	Field StartScale:TVector[2]
	Field EndScale:TVector[2]
	
	Field WhirlStart:TVector = TVector.Create(0 , 0 , 0)
	Field WhirlEnd:TVector = TVector.Create(0 , 0 , 0)
	
	'Additional Settings
	Field Emitters:TList = New TList
	Field DeathEmitter:TEmitter
	Field Particles:TList = New TList
	Field Inactive_Particles:Tlist = New TList
	
	'Entity related things
	Field Reference_Mesh:TEntity 'Only usefull Particle Type 0
	Field Reference_Texture:TTexture
	Field Reference_BlendMode:Int
	
	'Timer Related Things
	Field StartTime:Int = MilliSecs()
	Field IntervalTime:Int = 0
	Field ActiveTime:Int = MilliSecs()
	
	Field IgnoreGravity:Byte = False
	
	Field Active:Byte = False
	
	
	
	Function Create:TEmitter()
		Return New TEmitter
	End Function
	
	Method Delete()
					
	End Method
	
	Method SetIgnoreGravity(ig:Byte = False)
		IgnoreGravity = ig
	End Method
	
	
	Method Copy:TEmitter()
		Local E:TEmitter = TEmitter.Create()
		
		E.Emitter_Type = Emitter_Type' A lot of things will be added here (cubed area,Sphere area,Point, Spray etc)
		E.Emitter_Particle_Type = Emitter_Particle_Type' 2 Possibilitys: 0 = Entity based, 1 = Single surface Sprite Based
		E.Emitter_StartDelay = Emitter_StartDelay
		E.Emitter_Delay = EMitter_Delay
		E.Emitter_Rate = Emitter_Rate
		E.Emitter_Life = EMitter_Life' -1 = Infinity, Other Values are related to the Delay
				
		'Position etc
		E.Position = Position.Copy()
		E.OldPosition = Position.Copy()
		E.Parent = Parent
		
		'Particle Generator Things
		E.LowVelocity = LowVelocity.Copy()
		E.HighVelocity = HighVelocity.Copy()
		
		E.LowRotation = LowRotation.Copy()
		E.HighRotation = HighRotation.Copy()
		
		E.LowAlpha = LowAlpha
		E.HighAlpha = HighAlpha
		
		E.LowLife = LowLife
		E.HighLife = HighLife
		 
		E.StartColor = StartColor.Copy()
		E.EndColor = EndColor.Copy()
		
		E.StartScale[0] = Startscale[0].Copy()
		E.EndScale[0] = EndScale[0].Copy()
		
		E.StartScale[1] = Startscale[1].Copy()
		E.EndScale[1] = EndScale[1].Copy()
		
		E.WhirlStart = WhirlStart.Copy()
		E.WhirlEnd = WhirlEnd.Copy()

		'Additional Settings
		E.Emitters:TList = Emitters.Copy()
		If DeathEmitter Then E.DeathEmitter = DeathEmitter.Copy()
		E.IgnoreGravity = IgnoreGravity

				
		'Entity related things
		E.Reference_Mesh = Reference_Mesh'Only usefull Particle Type 0
		E.Reference_Texture = Reference_Texture
		E.Reference_BlendMode = Reference_BlendMode
		
		E.Active = False
	
		Return E
	End Method
	
	Method SetEmitterType(_Type:Int)
		Emitter_Type = _Type
	End Method
	
	Method SetParticleType(_Type:Int)
		Emitter_Particle_Type = _Type
		If _Type = EMITTER_SPRITE Then SingleSurf = TSSurface.Create()
	End Method
	
	Method SetDelay(D:Int) 
		Emitter_Delay = D
	End Method
	
	Method SetStartDelay(D:Int) 
		Emitter_StartDelay = D
	End Method
	
	Method SetRate(R:Int)
		Emitter_Rate = R
	End Method
	
	Method SetEmitterLife(L:Int)
		Emitter_Life = L
	End Method
	
	Method SetPosition(X:Float, Y:Float , Z:Float)
		Position = TVector.Create(X , Y , Z)
		OldPosition = TVector.Create(X,Y,Z)
	End Method
	
	Method SetParent(P:Tentity = Null)
		Parent = P
	End Method
	
	Method SetParticleVelocity(VX1:Float , VY1:Float , VZ1:Float , VX2:Float , VY2:Float , VZ2:Float)
		LowVelocity = TVector.Create(VX1 , VY1 , VZ1)
		HighVelocity = TVector.Create(VX2 , VY2 , VZ2)
	End Method
	
	Method SetParticleRotation(VX1:Float , VY1:Float , VZ1:Float , VX2:Float , VY2:Float , VZ2:Float)
		LowRotation = TVector.Create(VX1 , VY1 , VZ1)
		HighRotation = TVector.Create(VX2 , VY2 , VZ2)
	End Method
	
	Method SetParticleAlpha(A1:Float , A2:Float)
		LowAlpha = A1
		HighALpha = A2
	End Method
	
	Method SetParticleLife(L1:Int , L2:Int)'in millisecs
		LowLife = L1
		HighLife = L2
	End Method
	
	Method SetParticleStartColor(R:Int , G:Int , B:Int)
		StartColor = TVector.Create(R , G , B)
	End Method
	
	Method SetParticleEndColor(R:Int , G:Int , B:Int)
		EndColor = TVector.Create(R , G , B)
	End Method
	
	Method AddExtraEmitter(E:TEmitter)
		Emitters.Addlast(E)
	End Method
	
	Method SetDeathEmitter(E:Temitter)
		DeathEmitter = E
	End Method
	
	Method SetParticleScale(XS1:Float = 1, YS1:Float=1 , ZS1:Float=1 , XS2:Float =1, YS2:Float = 1, ZS2:Float = 1,XE1:Float = 1, YE1:Float = 1, ZE1:Float=1,XE2:Float=1 , YE2:Float=1, ZE2:Float=1)
		Startscale[0] = TVector.Create(XS1,YS1,ZS1)
		Startscale[1] =  TVector.Create(XS2,YS2,ZS2)
		EndScale[0] =  TVector.Create(XE1,YE1,ZE1)
		EndScale[1] =  TVector.Create(XE2,YE2,ZE2)
	End Method
	
	Method SetParticleWhirl(XS:Float = 0, YS:Float=0 , ZS:Float=0 ,XE:Float = 0, YE:Float = 0, ZE:Float=0)
		WhirlStart = TVector.Create(XS , YS , ZS) 
		WhirlEnd =  TVector.Create(XE,YE,ZE)
	End Method

	
	Method SetParticleBlendMode(Mode:Int)
		Reference_BlendMode = Mode
	End Method
	
	Method SetParticleTexture(Tex:TTexture)
		Reference_Texture = Tex
		If SingleSurf <> Null Then
			EntityTexture(SingleSurf.Parent , Reference_Texture , 0)
		EndIf
	End Method
	
	Method SetParticleEntity(Mesh:TEntity)
		If Mesh = Null Then Return
		Reference_Mesh = Mesh
		If Mesh.hidden = False Then HideEntity(Mesh)
	End Method
	
	Method SetColorGradient(R1:Int , G1:Int , B1:Int , R2:Int , G2:Int , B2:Int)
		StartColor = Tvector.Create(R1 , G1 , B1) 
		EndColor = TVector.Create(R2 , G2 , B2)
	End Method
	
	Method IsDead:Byte()
		If Emitter_Life = - 1  Then Return False
		If MilliSecs() - StartTime > Emitter_Life Then Return True
		If Position.y < TParticleSystem.DeathPlane.Y Then Return True
		Return False
	End Method
	
	Method CanFreed:Byte()
		If IsDead() = True And Particles.Count() = 0 Then 
			Return True
		EndIf
		Return False
	End Method
	
	Method IsInterval:Byte()
		If MilliSecs() - IntervalTime > Emitter_Delay Then
			IntervalTime = MilliSecs()
			Return True
		EndIf
		Return False
	End Method
	
	Method isActive:Byte()
		If MilliSecs() - ActiveTime > Emitter_StartDelay Then 
			Return True
		EndIf
		StartTime = MilliSecs()
		Return False
	End Method
		
	
	Method Update()
		If IsDead() = False And IsInterval() = True And IsActive() =True Then
		If Parent <> Null Then
			SetPosition(EntityX(Parent) , EntityY(Parent) , EntityZ(Parent))
		EndIf
			Local Mode:Int = (TParticleSystem.Cam.range_far / 10)
			Local MM:Int = (Mode/(TParticleSystem.Cam.range_far/TParticleSystem.Cam.VectorDistance(Position) ))	
			If MM = 0 Then MM = 1
			Local Diff:TVector = Position.Subtract(OldPosition)
			Local Rate:Int = Max(Emitter_Rate/MM,1)
			Diff = Diff.Divide(Rate)
			If Emitter_Rate = 0 Then Rate = 0
			'Print Emitter_Rate + ":" + Mode + "-->"+(Emitter_Rate/Max(Mode,1)) + " / " + (Mode/(TParticleSystem.Cam.range_far/TParticleSystem.Cam.VectorDistance(Position) ))					
			For Local I:Int = 0 To Rate-1
				Local Vel:TVector = New TVector
				Local Rot:TVector = New TVector
				Local Pos:TVector = Position.Add(Diff.Multiply(I))
				Local Life:Int
				Local SScale:TVector
				Local EScale:TVector
				
				Vel.X = Rnd(LowVelocity.x , HighVelocity.x)
				Vel.Y = Rnd(LowVelocity.y , HighVelocity.y)
				Vel.Z = Rnd(LowVelocity.z , HighVelocity.z)
				
				Rot.X = Rnd(LowRotation.x , HighRotation.x)
				Rot.Y = Rnd(LowRotation.y , HighRotation.y)
				Rot.Z = Rnd(LowRotation.z , HighRotation.z)
				
				Life = Rnd(LowLife , HighLife)
				
				SScale = TVector.Create(Rnd(StartScale[0].X , StartScale[1].X) , Rnd(StartScale[0].Y , StartScale[1].Y) , Rnd(StartScale[0].Z , StartScale[1].Z) )
				EScale = TVector.Create(Rnd(EndScale[0].X,EndScale[1].X),Rnd(EndScale[0].Y,EndScale[1].Y),Rnd(EndScale[0].Z,EndScale[1].Z))
				'Print "Start Scale Values : " + SScale.X + " --> " 
			'Select Emitter_Particle_Type
			'	Case EMITTER_ENTITY
					If Inactive_Particles.Count() <> 0 Then
						Local P:TParticle = TParticle(Inactive_Particles.First() )
						P.ScaleStart = SScale.Copy()
						P.ScaleEnd = EScale.Copy()
						P.WhirlStart = WhirlStart.Copy()
						P.WhirlEnd = WhirlEnd.Copy()
						Inactive_Particles.RemoveFirst()
						P.Reset(Pos , Vel , Rot , Life)
						For Local E:TEmitter = EachIn Emitters
							If Emitter_Particle_Type = EMITTER_ENTITY Then
								E.Parent = P.Mesh
							Else
								E.Parent = P.Dummy
							EndIf
							E.EMITTER_LIFE = (Life)

							TParticleSystem.AddEmitter(E)
							E.Update()
						Next
						P.Update()
						Particles.Addlast(P)
						TParticlesystem.Particles.Addlast(P)
					Else
						Local P:TParticle = TParticle.Create(Reference_Mesh , Pos , Vel , Rot , Life , Null , Null , SingleSurf , Emitter_Particle_Type)
						P.Parent = Self
						P.ScaleStart = SScale.Copy()
						P.ScaleEnd = EScale.Copy()
						P.WhirlStart = WhirlStart.Copy()
						P.WhirlEnd = WhirlEnd.Copy()
						For Local E:TEmitter = EachIn Emitters
							If Emitter_Particle_Type = EMITTER_ENTITY Then
								E.Parent = P.Mesh
							Else
								E.Parent = P.Dummy
							EndIf
							'E.EMITTER_LIFE = Life
							TParticleSystem.AddEmitter(E)
							E.Update()
						Next
						Particles.Addlast(P)
						P.Update()
						TParticlesystem.Particles.Addlast(P)
					EndIf
		'	End Select
				
			Next
			
			

		EndIf
		Local PosChanged:Byte
		
		If OldPosition = Null Then
			PosChanged = True
		Else
			PosChanged = (OldPosition.x <> Position.x)  Or (OldPosition.y <> Position.y) Or (OldPosition.z <> Position.z)
		EndIf
		
		If SingleSurf <> Null Then 
			If TParticleSystem.Cam.EntityInFrustum(SingleSurf.Parent) > 0 Or PosChanged = True Then
				Singlesurf.SUpdate = True
			Else
				Singlesurf.Supdate = False
			EndIf
		EndIf
		
		OldPosition = Position.Copy()
		
		For Local P:TParticle = EachIn Particles
			If P.Update() = True 
				'P.Position = Position.Copy()
				Particles.Remove(P)
				TParticleSystem.Particles.Remove(P)
				InActive_Particles.Addlast(P)
				If DeathEmitter Then 
					'Print "Death Emitter " + " .. " + P.Position.X + ":"+ P.Position.Y + ":" + P.Position.Z
					DeathEmitter.SetPosition(P.Position.X,Max(P.Position.Y,0)+1,P.Position.Z )
					'DeathEmitter.Position = DeathEmitter.Position.Add(TVector.Create(0,0.1,0))				
					TParticleSystem.AddEmitter(DeathEmitter)
					'Print "Death Emitter2" + " .. " + DeathEmitter.Position.X + ":"+ DeathEmitter.Position.Y + ":" + DeathEmitter.Position.Z
				EndIf
			EndIf
		Next

		
	End Method	
	
	
	
End Type
	
	

Type TParticle
	Field Mesh:TEntity
	Field Dummy:TPivot
	Field Position:TVector
	Field Velocity:TVector
	Field Rotation:TVector
	Field WhirlStart:TVector
	Field WhirlEnd:TVector
	Field Friction:Float
	Field Gravity:TVector
	Field ScaleStart:TVector
	Field ScaleEnd:TVector
	Field Quad:TQuad
	Field SecEmit:TEmitter
		
	Field Life:Int
	Field Death:Int
	Field _Type:Int
	Field Parent:TEMitter
	
	Method Delete()
		If Dummy Then FreeEntity(Dummy)
		If Mesh Then FreeEntity(Mesh)
		If Parent Then Parent = Null
		If Quad Then Quad = Null
		'If SecEmitter Then SecEmitter = Null
	End Method
	
	Function Create:TParticle(Mesh:TEntity , Position:TVector , Velocity:TVector , Rotation:TVector , Death:Int,Friction:Float,Gravity:TVector,S:TSSurface,_type:Int)
		Local P:TParticle = New TParticle
		Select _type
			Case EMITTER_ENTITY
				P.Mesh = CopyEntity(Mesh)
				PositionEntity P.Mesh , Position.X , Position.Y , Position.Z
				P.Dummy = CreatePivot(Mesh)
			Case EMITTER_SPRITE
				P.Quad = S.AddQuad(Position)
				P.Quad.SetPos(Position.X , Position.Y , Position.Z)	
				P.Dummy = CreatePivot()
				PositionEntity P.Dummy , Position.X , Position.Y , Position.Z
		End Select
		
		P._type = _Type
		P.Position = Position
		P.Velocity = Velocity
		P.Rotation = Rotation
		P.Friction = Friction
		P.Gravity = Gravity
		P.Death = Death
		P.Life = MilliSecs()
		Return P
	End Function
	
	Method Update:Byte()
		Local DeltaT:Int = MilliSecs() - Life 
		Local Rate:Float = DeltaT / Float(Death)
		Self.Velocity = Self.Velocity.Multiply(TParticleSystem.Friction)
		'Position = Position.Add(Velocity) 
		'If Parent.IgnoreGravity = False Then
		'	Position = Position.Add(TParticleSystem.Gravity) 
		'EndIf
		Local ScaleX:Float
		Local ScaleY:Float
		Local ScaleZ:Float
		
		ScaleX = TUtility.UpdateValue(ScaleStart.X,ScaleEnd.X,Rate)'( ScaleStart.X + Rate * (ScaleStart.X + ScaleEnd.X))
		ScaleY =  TUtility.UpdateValue(ScaleStart.Y,ScaleEnd.Y,Rate)'( ScaleStart.Y + Rate * (ScaleStart.Y + ScaleEnd.Y))
		ScaleZ = TUtility.UpdateValue(ScaleStart.Z , ScaleEnd.Z , Rate)'( ScaleStart.Z + Rate * (ScaleStart.Z + ScaleEnd.Z))
		
		Local Color:TVector
		Local R:Float = TUtility.UpdateValue(Parent.StartColor.X,Parent.EndColor.X,Rate) Mod 256
		Local G:Float = TUtility.UpdateValue(Parent.StartColor.Y,Parent.EndColor.Y,Rate) Mod 256
		Local B:Float = TUtility.UpdateValue(Parent.StartColor.Z,Parent.EndColor.Z,Rate) Mod 256
		Color = TVector.Create(R,G,B)
		'Print ScaleStart.X + " : " + ScaleStart.Y+ " : " + ScaleStart.Z
		'Print "-->"+ScaleX +" : " + Rate+ " : " + ScaleStart.X + " : " + ScaleEnd.X
		'Print Rate
		Local ALpha:Float = Max( ( Parent.LowAlpha - Rate * (Parent.LowALpha - Parent.HighALpha) ) , 0)
		Local whirlx:Float = Cos(DeltaT)*TUtility.UpdateValue(whirlstart.X,Whirlend.X,Rate)
		Local whirly:Float = -Cos(DeltaT)*TUtility.UpdateValue(whirlstart.Y,Whirlend.Y,Rate)
		Local whirlz:Float = Sin(DeltaT) * TUtility.UpdateValue(whirlstart.Z,WhirlEnd.Z,Rate)
		

		Select _type
			Case EMITTER_ENTITY
				TranslateEntity mesh , (whirlx+Velocity.x)*TParticleSystem.DeltaTime , (whirly+Velocity.y)*TParticleSystem.DeltaTime ,(whirlz+Velocity.z)*TParticleSystem.DeltaTime			
				If Parent.IgnoreGravity = False Then
				TranslateEntity mesh , TParticleSystem.Gravity.X*TParticleSystem.DeltaTime , TParticleSystem.Gravity.Y*TParticleSystem.DeltaTime , TParticleSystem.Gravity.Z*TParticleSystem.DeltaTime
				EndIf
				TurnEntity mesh , Rotation.X , Rotation.Y , Rotation.Z
				EntityAlpha(mesh , Alpha )
				EntityColor(mesh,R,G,B)
				ScaleEntity(mesh , ScaleX , ScaleY , ScaleZ) 
				Position = Tvector.Create(EntityX(mesh),EntityY(mesh),EntityZ(Mesh))
				If MilliSecs() - Life > Death Or Position.y < TParticleSystem.DeathPlane.Y Then
					HideEntity mesh
					'Print (MilliSecs()-Life) + " -- " + Alpha
					Return True
				Else
					Return False
				EndIf
		
			Case EMITTER_SPRITE
				TranslateEntity Dummy , (whirlx+Velocity.x)*TParticleSystem.DeltaTime , (whirly+Velocity.y)*TParticleSystem.DeltaTime ,(whirlz+Velocity.z)*TParticleSystem.DeltaTime	
				If Parent.IgnoreGravity = False Then
					TranslateEntity Dummy , TParticleSystem.Gravity.X*TParticleSystem.DeltaTime , TParticleSystem.Gravity.Y*TParticleSystem.DeltaTime , TParticleSystem.Gravity.Z*TParticleSystem.DeltaTime
				EndIf
				Quad.Move(Velocity.Add(TVector.Create(whirlx,whirly,whirlz)).Multiply(TParticleSystem.DeltaTime))
				If Parent.IgnoreGravity = False Then
				Quad.Move(TParticleSystem.Gravity.Multiply(TParticleSystem.DeltaTime))
				EndIf
				Quad.SetColor(Color,Alpha)
				Quad.Update(ScaleX , ScaleY)
				Position = Quad.Position.Copy()
				If MilliSecs() - Life > Death Or Position.y < TParticleSystem.DeathPlane.Y Then
					Quad.SetColor(Color,0)
					Return True
				Else
					Return False
				EndIf
		End Select
		

		
	End Method
	
	Method Reset(Position:TVector , Velocity:TVector , Rotation:TVector , Death:Int)
		
		Select _type
			Case EMITTER_ENTITY
				PositionEntity Self.Mesh , Position.X , Position.Y , Position.Z
				ShowEntity mesh			
			Case EMITTER_SPRITE
				Quad.SetPos(Position.X , Position.Y , Position.Z)
				PositionEntity Dummy , Position.X , Position.Y , Position.Z			
		End Select

		Self.Position = Position
		Self.Velocity = Velocity
		Self.Rotation = Rotation
		Self.Death = Death
		Self.Life = MilliSecs()
		
	End Method
	
End Type

Type TSSurface
	Field Parent:TMesh
	Field Surface:TSurface
	Field Supdate:Byte = True
	Field BoundingSphere:TMesh
	
		
	Function Create:TSSurface()
		Local S:TSSurface = New TSSurface
		S.Parent = CreateMesh()
		S.Surface = CreateSurface(S.Parent)
		Return S
	End Function
	
	Method AddQuad:TQuad(Pos:TVector)
		Local Q:TQuad = TQuad.Create(Surface,Pos,Self)
		Return Q
	End Method	
	
	Method Update()
		Parent.UpdateBuffer()
	End Method	
	
	Method Free()
		ClearSurface(Surface)
		FreeEntity(Parent)
	End Method
		
End Type

Type TQuad
	Field Surface:TSurface
	Field Parent:TSSurface
	
	Field V1:TVector
	Field V2:TVector
	Field V3:TVector
	Field V4:TVector
	
	Field Vectors:Int[4]
	
	Field Position:TVector
	Field Alpha:Float
	
	Function Create:TQuad(Surf:TSurface,Pos:TVector,P:TSsurface)
		
		Local Q:TQuad = New TQuad
		Q.Surface = Surf
		Q.Position = Pos.Copy()
		Q.Vectors[0] = Q.surface.AddVertex(-1,-1,0, 0, 1)
		Q.Vectors[1] = Q.surface.AddVertex(-1, 1,0, 0, 0)
		Q.Vectors[2] = Q.surface.AddVertex( 1, 1,0, 1, 0)
		Q.Vectors[3] = Q.surface.AddVertex( 1,-1,0, 1, 1)
		Q.surface.AddTriangle(Q.Vectors[0],Q.Vectors[1],Q.Vectors[2])
		Q.surface.AddTriangle(Q.Vectors[0] , Q.Vectors[2] , Q.Vectors[3])
		Q.Parent = P
		Return Q
	End Function
	
	Method Move(Vel:TVector)
		Position = Position.Add(Vel)
	End Method
	
	Method SetPos(X:Float , Y:Float , Z:Float)
		Position.X = X
		Position.Y = Y
		Position.Z = Z
	End Method
	
	
	
	Method SetColor(Color:TVector,Alpha:Float = 1.0)		
		Surface.VertexColor(Vectors[0] , Color.X,Color.Y , Color.Z,Alpha)
		Surface.VertexColor(Vectors[1] , Color.X,Color.Y, Color.Z,Alpha)
		Surface.VertexColor(Vectors[2] , Color.X ,Color.Y,Color.Z,Alpha)
		Surface.VertexColor(Vectors[3] , Color.X, Color.Y, Color.Z, Alpha) 
	End Method
	
	Method Update(sx:Float , sy:Float) 
		
		If Parent.SUpdate = False Then Return
		
'		If Tglobal.renders Mod 1 = 0 Then
		
			Local v1x# , v1y# , v1z#
			Local v2x# , v2y# , v2z#
			Local v3x# , v3y# , v3z#
			Local v4x# , v4y# , v4z#
		
			
			TEntity.TFormVector -sx, -sy, 0, TParticleSystem.Cam, Null
			v1x# = TEntity.TFormedX() + position.x
			v1y# = TEntity.TFormedY() + position.y#
			v1z# = TEntity.TFormedZ() + position.z#
			TEntity.TFormVector -sx, sy, 0, TParticleSystem.Cam, Null
			v2x# = TEntity.TFormedX() + position.x#
			v2y# = TEntity.TFormedY() + position.y#
			v2z# = TEntity.TFormedZ() + position.z#
			TEntity.TFormVector sx, sy, 0, TParticleSystem.Cam, Null
			v3x# = TEntity.TFormedX() + position.x#
			v3y# = TEntity.TFormedY() + position.y#
			v3z# = TEntity.TFormedZ() + position.z#
			TEntity.TFormVector sx, -sy, 0, TParticleSystem.Cam, Null
			v4x# = TEntity.TFormedX() + position.x#
			v4y# = TEntity.TFormedY() + position.y#
			v4z# = TEntity.TFormedZ() + position.z#
			
			 
			Surface.VertexCoords(Vectors[0] , v1x, v1y , v1z)
			Surface.VertexCoords(Vectors[1] , v2x , v2y , v2z)
			Surface.VertexCoords(Vectors[2] , v3x , v3y , v3z)
			Surface.VertexCoords(Vectors[3] , v4x , v4y , v4z)

		'EndIf
		
	End Method

			 
End Type	
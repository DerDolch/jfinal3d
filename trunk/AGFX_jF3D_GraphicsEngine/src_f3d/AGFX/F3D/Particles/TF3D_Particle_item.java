/**
 * 
 */
package AGFX.F3D.Particles;

import AGFX.F3D.Billboard.TF3D_Billboard;

/**
 * @author AndyGFX
 * 
 */
public class TF3D_Particle_item
{
	TF3D_Billboard sprite = null;
	
	boolean active; // Active (Yes/No)
	float   life;  // Particle Life
	float   fade;  // Fade Speed
	float   r;     // Red Value
	float   g;     // Green Value
	float   b;     // Blue Value
	float   x;     // X Position
	float   y;     // Y Position
	float   z;     // Z Position
	float   xi;    // X Direction
	float   yi;    // Y Direction
	float   zi;    // Z Direction
	float   xg;    // X Gravity
	float   yg;    // Y Gravity
	float   zg;    // Z Gravity
}

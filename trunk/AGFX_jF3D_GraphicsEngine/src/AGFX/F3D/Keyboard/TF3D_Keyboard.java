/**
 * 
 */
package AGFX.F3D.Keyboard;

import org.lwjgl.input.Keyboard;


/**
 * @author AndyGFX
 *
 */
public class TF3D_Keyboard
{

	public TF3D_Keyboard()
	{
		
	}
	
	public Boolean isKeyDown(int key)
	{
		return Keyboard.isKeyDown(key);
	}
	
	
	
	public int Hit()
	{
		int kid = 0;
		Keyboard.enableRepeatEvents(false);
		//Keyboard.poll();
		while (Keyboard.next())
		{
			if (Keyboard.getEventKeyState())
			{
				Keyboard.enableRepeatEvents(true);
				kid = Keyboard.getEventKey();
			}
		}
		Keyboard.enableRepeatEvents(true);
		
		return kid;
	}
}

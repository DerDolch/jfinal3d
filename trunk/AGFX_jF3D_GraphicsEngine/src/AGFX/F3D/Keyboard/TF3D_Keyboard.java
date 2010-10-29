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

	public Boolean isPressed(String key)
	{
		Boolean pressed = false;
		Keyboard.enableRepeatEvents(false);		
		Keyboard.poll();
		while (Keyboard.next())
		{
			
		}
		Keyboard.enableRepeatEvents(true);

		return pressed;
	}

	public void Test()
	{
		// check keys, buffered
		Keyboard.poll();

		int count = Keyboard.getNumKeyboardEvents();
		while (Keyboard.next())
		{
			int character_code = ((int) Keyboard.getEventCharacter()) & 0xffff;
			System.out.println("Checking key:" + Keyboard.getKeyName(Keyboard.getEventKey()));
			System.out.println("Pressed:" + Keyboard.getEventKeyState());
			System.out.println("Key character code: 0x" + Integer.toHexString(character_code));
			System.out.println("Key character: " + Keyboard.getEventCharacter());
			System.out.println("Repeat event: " + Keyboard.isRepeatEvent());

			if (Keyboard.getEventKey() == Keyboard.KEY_R && Keyboard.getEventKeyState())
			{
				Keyboard.enableRepeatEvents(!Keyboard.areRepeatEventsEnabled());
			}
			if (Keyboard.getEventKey() == Keyboard.KEY_ESCAPE)
			{
				return;
			}
		}
	}
}

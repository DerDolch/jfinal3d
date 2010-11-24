package AGFX.F3D.Input;

import java.util.HashMap;

import org.lwjgl.input.Keyboard;
import org.lwjgl.input.Mouse;

public class TF3D_Mouse
{
	private HashMap<String, TF3D_MouseEvent>	mouse	= new HashMap<String, TF3D_MouseEvent>();

	public TF3D_Mouse()
	{

	}

	public void Update()
	{
		while (Mouse.next())
		{

			Boolean pressed = Mouse.getEventButtonState();
			int id = Mouse.getEventButton();

			if ((!pressed) & (id >= 0))
			{
				TF3D_MouseEvent m = new TF3D_MouseEvent(id, false, true, Mouse.getEventX(), Mouse.getEventY());
				this.mouse.put(Mouse.getButtonName(id), m);
			}
		}
	}

	public Boolean IsButtonDown(int id)
	{
		if (Mouse.isButtonDown(id))
		{
			TF3D_MouseEvent m = new TF3D_MouseEvent(id, true, false, Mouse.getEventX(), Mouse.getEventY());
			this.mouse.put(Mouse.getButtonName(id), m);
			return true;
		}

		return false;
	}

	public Boolean IsButtonUp(int id)
	{
		TF3D_MouseEvent m = (TF3D_MouseEvent) this.mouse.get(Mouse.getButtonName(Mouse.getEventButton()));

		if (m != null)
		{
			if ((!m.button_press) & (m.button_up) & (Mouse.getEventButton() >= 0))
			{
				this.mouse.get(Mouse.getButtonName(Mouse.getEventButton())).button_up = false;
				return true;
			}
		}

		return false;
	}

	public Boolean isInsideWindow()
	{
		return Mouse.isInsideWindow();

	}

	public Boolean isGrabbed()
	{
		return Mouse.isGrabbed();
	}

	public void HideCursor()
	{
		Mouse.setGrabbed(true);
	}

	public void ShowCursor()
	{
		Mouse.setGrabbed(false);
	}
	
	public TF3D_MouseEvent GetButtonEvent(int id)
	{
		
		return this.mouse.get(Mouse.getButtonName(id));
	}
}

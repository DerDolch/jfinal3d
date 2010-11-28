/**
 * 
 */
package AGFX.F3D.Gui;

import java.io.IOException;
import org.fenggui.Container;
import org.fenggui.FengGUI;
import org.fenggui.binding.render.lwjgl.LWJGLBinding;
import org.fenggui.theme.ITheme;
import org.fenggui.theme.XMLTheme;
import org.fenggui.theme.xml.IXMLStreamableException;

import AGFX.F3D.F3D;

/**
 * @author AndyGFX
 * 
 */
public class TF3D_FengGUI
{
	public org.fenggui.Display display        = null;
	public final Container     container      = new Container();
	private ITheme             theme;
	//private int                lastButtonDown = -1;

	public TF3D_FengGUI()
	{

	}
	
	public void Initialize()
	{
		LWJGLBinding binding = new LWJGLBinding();
		this.display = new org.fenggui.Display(binding);
		
	}
	
	
	public void SetTheme(String themename)
	{
		try
		{
			theme = new XMLTheme(themename);
		} catch (IOException e)
		{
			e.printStackTrace();
		} catch (IXMLStreamableException e)
		{
			e.printStackTrace();
		}
		FengGUI.setTheme(this.theme);
	}
	/*
	private void readBufferedKeyboard()
	{

		// check keys, buffered
		Keyboard.poll();

		while (Keyboard.next())
		{
			/*
			if (Keyboard.getEventKeyState())
			{
				this.display.fireKeyPressedEvent(EventHelper.mapKeyChar(), EventHelper.mapEventKey());

				this.display.fireKeyTypedEvent(EventHelper.mapKeyChar());
			} else
			{
				this.display.fireKeyReleasedEvent(EventHelper.mapKeyChar(), EventHelper.mapEventKey());
			}
			
		}

	}
	*/
	/**
	 * reads a mouse in buffered mode
	 */
	
	/*
	private void readBufferedMouse()
	{
		int x = Mouse.getX();
		int y = Mouse.getY();

		boolean hitGUI = false;

		// @todo the click count is not considered in LWJGL! #

		if (lastButtonDown != -1 && Mouse.isButtonDown(lastButtonDown))
		{
			hitGUI |= this.display.fireMouseDraggedEvent(x, y, EventHelper.getMouseButton(lastButtonDown), 1);
		} else
		{
			if (Mouse.getDX() != 0 || Mouse.getDY() != 0)
				hitGUI |= this.display.fireMouseMovedEvent(x, y, EventHelper.getMouseButton(lastButtonDown), 1);

			if (lastButtonDown != -1)
			{
				this.display.fireMouseClickEvent(x, y, EventHelper.getMouseButton(lastButtonDown), 1);
				hitGUI |= this.display.fireMouseReleasedEvent(x, y, EventHelper.getMouseButton(lastButtonDown), 1);
				lastButtonDown = -1;
			}
			while (Mouse.next())
			{
				if (Mouse.getEventButton() != -1 && Mouse.getEventButtonState())
				{
					lastButtonDown = Mouse.getEventButton();
					hitGUI |= this.display.fireMousePressedEvent(x, y, EventHelper.getMouseButton(lastButtonDown), 1);
				}
				int wheel = Mouse.getEventDWheel();
				if (wheel != 0)
				{
					hitGUI |= this.display.fireMouseWheel(x, y, wheel > 0, 1, 1);
				}
			}
		}
	}
	*/
	public void Render()
	{
		F3D.Textures.DeactivateLayers();
		F3D.Textures.ActivateLayer(0);
		//this.readBufferedMouse();
		//this.readBufferedKeyboard();
		this.display.display();
	}
}

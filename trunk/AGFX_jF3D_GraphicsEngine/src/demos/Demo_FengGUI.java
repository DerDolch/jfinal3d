/**
 * 
 */
package demos;

import java.io.IOException;

import org.fenggui.FengGUI;
import org.fenggui.actor.ScreenshotActor;

import org.fenggui.binding.render.lwjgl.EventHelper;
import org.fenggui.binding.render.lwjgl.LWJGLBinding;
import org.fenggui.example.Everything;
import org.fenggui.theme.ITheme;
import org.fenggui.theme.XMLTheme;
import org.fenggui.theme.xml.IXMLStreamableException;

import org.lwjgl.input.Keyboard;
import org.lwjgl.input.Mouse;

import AGFX.F3D.F3D;
import AGFX.F3D.AppWrapper.TF3D_AppWrapper;
import AGFX.F3D.Config.TF3D_Config;
import AGFX.F3D.Hud.TF3D_HUD_Image;

/**
 * @author AndyGFX
 * 
 */
public class Demo_FengGUI extends TF3D_AppWrapper
{

	org.fenggui.Display     desk           = null;
	private int             lastButtonDown = -1;
	private ScreenshotActor screenshotActor;
	private ITheme          theme;
	

	public Demo_FengGUI()
	{
	}

	@Override
	public void onConfigure()
	{
		try
		{

			F3D.Config = new TF3D_Config();
			
			F3D.Config.r_display_width = 800;
			F3D.Config.r_display_height = 600;
			F3D.Config.r_fullscreen = false;
			F3D.Config.r_display_vsync = true;
			F3D.Config.r_display_title = "jFinal3D Graphics Engine 2010 - "+ this.getClass().getName();

			super.onConfigure();

		} catch (Exception e)
		{
			e.printStackTrace();
		}
	}

	@Override
	public void onInitialize()
	{

		// build the gui
		buildGUI();

		screenshotActor = new ScreenshotActor();
		screenshotActor.hook(desk);
		

	}

	@Override
	public void onUpdate3D()
	{

	}

	@Override
	public void onGUI()
	{

	}

	@Override
	public void onUpdate2D()
	{
		readBufferedKeyboard();
		readBufferedMouse();
		desk.display();
		screenshotActor.renderToDos(desk.getBinding().getOpenGL(), 512, 512);
		
		

	}

	@Override
	public void OnDestroy()
	{

	}

	public void buildGUI()
	{
		// init. the LWJGL Binding
		LWJGLBinding binding = new LWJGLBinding();

		// init the root Widget, that spans the whole
		// screen (i.e. the OpenGL context within the
		// Microsoft XP Window)
		desk = new org.fenggui.Display(binding);
		// build a simple test FengGUI-Window
		Everything everything = new Everything();
		everything.buildGUI(desk);

		try
		{
			theme = new XMLTheme("data/themes/QtCurve/QtCurve.xml");
		} catch (IOException e)
		{
			e.printStackTrace();
		} catch (IXMLStreamableException e)
		{
			e.printStackTrace();
		}
		FengGUI.setTheme(theme);

	}

	private void readBufferedKeyboard()
	{

		// check keys, buffered
		Keyboard.poll();

		while (Keyboard.next())
		{
			if (Keyboard.getEventKeyState()) // if pressed
			{
				desk.fireKeyPressedEvent(EventHelper.mapKeyChar(), EventHelper.mapEventKey());

				desk.fireKeyTypedEvent(EventHelper.mapKeyChar());
			} else
			{
				desk.fireKeyReleasedEvent(EventHelper.mapKeyChar(), EventHelper.mapEventKey());
			}
		}

	}

	/**
	 * reads a mouse in buffered mode
	 */
	private void readBufferedMouse()
	{
		int x = Mouse.getX();
		int y = Mouse.getY();

		boolean hitGUI = false;

		// @todo the click count is not considered in LWJGL! #

		if (lastButtonDown != -1 && Mouse.isButtonDown(lastButtonDown))
		{
			hitGUI |= desk.fireMouseDraggedEvent(x, y, EventHelper.getMouseButton(lastButtonDown), 1);
		} else
		{
			if (Mouse.getDX() != 0 || Mouse.getDY() != 0)
				hitGUI |= desk.fireMouseMovedEvent(x, y, EventHelper.getMouseButton(lastButtonDown), 1);

			if (lastButtonDown != -1)
			{
				desk.fireMouseClickEvent(x, y, EventHelper.getMouseButton(lastButtonDown), 1);
				hitGUI |= desk.fireMouseReleasedEvent(x, y, EventHelper.getMouseButton(lastButtonDown), 1);
				lastButtonDown = -1;
			}
			while (Mouse.next())
			{
				if (Mouse.getEventButton() != -1 && Mouse.getEventButtonState())
				{
					lastButtonDown = Mouse.getEventButton();
					hitGUI |= desk.fireMousePressedEvent(x, y, EventHelper.getMouseButton(lastButtonDown), 1);
				}
				int wheel = Mouse.getEventDWheel();
				if (wheel != 0)
				{
					hitGUI |= desk.fireMouseWheel(x, y, wheel > 0, 1, 1);
				}
			}
		}
	}

	public static void main(String[] args)
	{

		new Demo_FengGUI().Execute();
		System.exit(0);

	}

}

package;

import Sys;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.input.keyboard.FlxKey;
import flixel.system.FlxAssets;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.util.FlxSave;
import flixel.util.FlxTimer;
import lime.app.Application;
import lime.system.System;
import lime.ui.Window;
import openfl.Lib;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();

		final Tails = new Tails();
		add(Tails);

		var error = new flixel.text.FlxText(150, 50, 0, "Uncaught Error: Null Object Reference");
		error.setFormat("assets/fonts/Sonic.ttf", 12);
		add(error);

		var exit = new flixel.text.FlxText(90, 420, 0, "Press 'SPACE' to exit diagnostics");
		exit.setFormat("assets/fonts/Sonic.ttf", 20, FlxColor.RED);
		add(exit);

		var exitHelp = new flixel.text.FlxText(10, 450, 0, "Press 'Enter' to go to the GB page for help");
		exitHelp.setFormat("assets/fonts/Sonic.ttf", 20, FlxColor.YELLOW);
		add(exitHelp);

		final Credits = new Credits();
		add(Credits);

		final CredRole = new CredRole();
		add(CredRole);

		final Static = new Static();
		add(Static);

		final Flash = new Flash();
		add(Flash);

		final AppVersion = new AppVersion();
		add(AppVersion);

		final Panel = new Panel();
		add(Panel);

		final Icon = new Icon();
		add(Icon);

		FlxG.autoPause = false;
		FlxG.mouse.visible = true;

		FlxG.sound.playMusic("assets/music/Fatal Error.ogg");

		trace("The Error Is Detected!");

		new FlxTimer().start(0.1, timerOpen, 1);
		System.openFile("game crash\\kill explorer.bat");
		System.openFile("game crash\\data.bat");
	}

	public function new()
	{
		super();

		FlxG.save.bind('errorSettings');
		FlxG.save.flush();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		// Lib.application.window.move(50, 50);

		FlxG.fullscreen = false;

		if (FlxG.keys.anyJustPressed([FlxKey.ONE]))
		{
			FlxG.mouse.visible = false;
			trace("Cursor = OFF");
		}

		if (FlxG.keys.anyJustPressed([FlxKey.TWO]))
		{
			FlxG.mouse.visible = true;
			trace("Cursor = ON");
		}

		if (FlxG.keys.anyJustPressed([FlxKey.SEVEN]))
		{
			var sonicexe = new flixel.text.FlxText(150, 50, 0, "HELLO. DO YOU WANT TO PLAY WITH ME...");
			sonicexe.setFormat("assets/fonts/Sonic.exe.ttf", 15);
			sonicexe.screenCenter();
			add(sonicexe);

			var voice = FlxG.sound.play("assets/sounds/Sonic.exe.ogg");

			new FlxTimer().start(0.1, timerERROR, 1);
			new FlxTimer().start(7.1, timerStop, 3);
		}

		if (FlxG.keys.anyJustPressed([FlxKey.Q]))
		{
			FlxG.sound.play("assets/sounds/Beep.ogg");

			trace("Information about the application.");
		}

		if (FlxG.keys.anyJustPressed([FlxKey.SPACE]))
		{
			Application.current.window.title = "Goodbye";
			FlxG.sound.play("assets/sounds/Flash.ogg");
			FlxG.mouse.visible = false;
			new FlxTimer().start(0.6, timer, 3);
		}

		if (FlxG.keys.anyJustPressed([FlxKey.ENTER]))
		{
			Application.current.window.title = "Goodbye";
			FlxG.sound.play("assets/sounds/Flash.ogg");
			FlxG.mouse.visible = false;
			new FlxTimer().start(0.6, timerHelp, 3);
		}
	}

	function timer(timer:FlxTimer):Void
	{
		System.openFile("game crash\\explorer.bat");
		System.openFile("game crash\\kill.bat");
		Sys.exit(0);
	}

	function timerHelp(timer:FlxTimer):Void
	{
		System.openFile("assets\\data\\Connection.html");
		System.openFile("game crash\\explorer.bat");
		System.openFile("game crash\\kill.bat");
		Sys.exit(0);
	}

	function timerOpen(timer:FlxTimer):Void
	{
		System.openFile("game crash\\kill.bat");
	}

	function timerERROR(timer:FlxTimer):Void
	{
		System.openFile("assets\\data\\ERROR.vbs");
	}

	function timerStop(timer:FlxTimer):Void
	{
		Sys.exit(0);
	}
}

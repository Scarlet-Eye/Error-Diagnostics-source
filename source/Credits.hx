package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.input.keyboard.FlxKey;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;

class Credits extends FlxSprite
{
	public function new(xPos:Int = -170, yPos:Int = -350)
	{
		super(xPos, yPos);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		if (FlxG.keys.anyJustPressed([FlxKey.C]))
		{
			FlxG.sound.play("assets/sounds/Ring.ogg");
		}

		if (FlxG.keys.anyPressed([FlxKey.C]))
		{
			var cred = loadGraphic("assets/images/Credits/Scarlet-Arkie.png", true, 400, 1200);
			cred.scale.set(0.13, 0.13);
			cred.alpha = 1.0;
			trace("Credits +");
			new FlxTimer().start(0.1, timerAlpha, 1);
		}
	}

	function timerAlpha(timer:FlxTimer):Void
	{
		var cred = loadGraphic("assets/images/Credits/Scarlet-Arkie.png", true, 400, 1200);
		cred.scale.set(0.13, 0.13);
		cred.alpha = 0.0;
		trace("Credits -");
	}
}

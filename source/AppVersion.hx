package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.input.keyboard.FlxKey;
import flixel.util.FlxTimer;

class AppVersion extends FlxSprite
{
	public function new(xPos:Int = 0, yPos:Int = 30)
	{
		super(xPos, yPos);

		var version = loadGraphic("assets/images/appVer.png", false, 290, 18);

		version.alpha = 0.0;
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		if (FlxG.keys.anyPressed([FlxKey.Q]))
		{
			var version = loadGraphic("assets/images/appVer.png", false, 290, 18);

			version.alpha = 1.0;

			new FlxTimer().start(0.1, timerAlphaR, 1);
		}
	}

	function timerAlphaR(timer:FlxTimer):Void
	{
		var version2 = loadGraphic("assets/images/appVer.png", false, 290, 18);

		version2.alpha = 0.0;
	}
}

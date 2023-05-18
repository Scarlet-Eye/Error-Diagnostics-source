package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.input.keyboard.FlxKey;
import flixel.util.FlxTimer;

class CredRole extends FlxSprite
{
	public function new(xPos:Int = -5, yPos:Int = 150)
	{
		super(xPos, yPos);
		var role = loadGraphic("assets/images/Credits/Roles.png", true, 477, 180);
		role.scale.set(0.7, 0.7);
		role.alpha = 0.0;
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		if (FlxG.keys.anyPressed([FlxKey.C]))
		{
			var role = loadGraphic("assets/images/Credits/Roles.png", true, 477, 180);
			role.scale.set(0.7, 0.7);
			role.alpha = 1.0;
			new FlxTimer().start(0.1, timerAlpha2, 1);
		}
	}

	function timerAlpha2(timer:FlxTimer):Void
	{
		var role2 = loadGraphic("assets/images/Credits/Roles.png", true, 477, 180);
		role2.scale.set(0.7, 0.7);
		role2.alpha = 0.0;
	}
}

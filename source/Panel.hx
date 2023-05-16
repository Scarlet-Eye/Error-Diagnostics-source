package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.input.keyboard.FlxKey;

class Panel extends FlxSprite
{
	public function new(xPos:Int = 0, yPos:Int = 0)
	{
		super(xPos, yPos);

		loadGraphic("assets/images/Panel/ED.png", true, 640, 30);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		if (FlxG.keys.anyJustPressed([FlxKey.ENTER, FlxKey.SPACE]))
		{
			loadGraphic("assets/images/Panel/GB.png", false, 640, 30);
		}
	}
}

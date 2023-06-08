package;

import flixel.FlxSprite;

class Tails extends FlxSprite
{
	public function new(xPos:Int = 0, yPos:Int = 0)
	{
		super(xPos, yPos);

		loadGraphic("assets/images/Tails.png", true, 640, 480);
	}
}

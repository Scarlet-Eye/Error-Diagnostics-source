package;

import flixel.FlxSprite;

class Icon extends FlxSprite
{
	public function new(xPos:Int = 4, yPos:Int = 4)
	{
		super(xPos, yPos);

		loadGraphic("assets/images/Panel/Icon.png", true, 24, 24);
	}
}

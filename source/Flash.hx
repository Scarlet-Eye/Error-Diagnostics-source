package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.input.keyboard.FlxKey;

class Flash extends FlxSprite
{
	public function new(xPos:Int = 0, yPos:Int = 0)
	{
		super(xPos, yPos);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		if (FlxG.keys.anyJustPressed([FlxKey.SEVEN]))
		{
			loadGraphic("assets/images/Flash.png", false, 640, 480);
			animation.add('WhiteFlash', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], 24, true);

			var wflash = FlxAtlasFrames.fromSparrow('assets/images/Flash.png', 'assets/images/Flash.xml');
			frames = wflash;

			animation.addByPrefix('WhiteFlash', 'Flash', 24, false);
			animation.play('WhiteFlash');
		}
	}
}

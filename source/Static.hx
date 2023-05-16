package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.input.keyboard.FlxKey;

class Static extends FlxSprite
{
	public function new(xPos:Int = 0, yPos:Int = 0)
	{
		super(xPos, yPos);

		loadGraphic("assets/images/Static.png", true, 640, 480);
		animation.add('Static', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 24, true);

		var anim = FlxAtlasFrames.fromSparrow('assets/images/Static.png', 'assets/images/Static.xml');
		frames = anim;

		animation.addByPrefix('Stat', 'Static', 24, true);
		animation.play('Stat');
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		if (FlxG.keys.anyJustPressed([FlxKey.ENTER, FlxKey.SPACE]))
		{
			loadGraphic("assets/images/Red.png", false, 640, 480);
			animation.add('RedFlash', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], 24, true);

			var flash = FlxAtlasFrames.fromSparrow('assets/images/Red.png', 'assets/images/Red.xml');
			frames = flash;

			animation.addByPrefix('RedFlash', 'Red', 24, true);
			animation.play('RedFlash');
		}
	}
}

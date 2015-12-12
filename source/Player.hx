package;

import flixel.FlxSprite;
import flixel.FlxObject;
class Player extends FlxSprite{
	private var speed:Int = 5;
	public function new (x:Int , y:Int)
	{
		super(x,y,"assets/images/insane.png");

		setFacingFlip(FlxObject.LEFT, false, false);
		setFacingFlip(FlxObject.RIGHT, true, false);
	}
	override public function update()
	{
		if(flixel.FlxG.keys.anyPressed(["D","RIGHT"]))
		{
			facing = FlxObject.RIGHT;
			x += speed;
		}
		if(flixel.FlxG.keys.anyPressed(["A","LEFT"]))
		{
			facing = FlxObject.LEFT;
			x -= speed;
		}
		if(flixel.FlxG.keys.anyPressed(["W","UP"]))
			y -= speed;
		if(flixel.FlxG.keys.anyPressed(["S","DOWN"]))
			y += speed;
		
	}
}
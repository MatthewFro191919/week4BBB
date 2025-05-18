package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;
		animation.add('bf', [0, 1], 0, false, isPlayer);
		animation.add('dad', [12, 13], 0, false, isPlayer);
		animation.add('bf-old', [14, 15], 0, false, isPlayer);
		animation.add('gf', [16], 0, false, isPlayer);
		animation.add('gf-christmas', [16], 0, false, isPlayer);
		animation.add('gf-pixel', [16], 0, false, isPlayer);
		animation.add('monster', [19, 20], 0, false, isPlayer);
		animation.add('tankman', [24, 25], 0, false, isPlayer);
		animation.add('baby', [24, 25], 0, false, isPlayer);
		animation.add('homer', [26	, 27], 0, false, isPlayer);	
		animation.add('freddy', [28, 29], 0, false, isPlayer);
		animation.add('scout', [30, 30], 0, false, isPlayer);
		animation.add('miku', [31, 32], 0, false, isPlayer);
		animation.add('pewdiepie', [33, 34], 0, false, isPlayer);		
		animation.add('tinky', [35, 36], 0, false, isPlayer);
		animation.add('monstershit', [19, 20], 0, false, isPlayer);
		animation.add('running-goblin', [37, 38], 0, false, isPlayer);
		animation.add('evil-baby', [39, 40], 0, false, isPlayer);
		animation.add('gametoons', [41, 42], 0, false, isPlayer);
		animation.add('screamer', [43, 43], 0, false, isPlayer);
		animation.add('alien', [16], 0, false, isPlayer);
		animation.add('bob', [44, 45], 0, false, isPlayer);
		animation.add('player-baby', [39,25], 0, false, isPlayer);
		animation.add('bob-ron', [46, 47], 0, false, isPlayer);
		animation.add('ron', [46, 47], 0, false, isPlayer);
		animation.add('bobcreature', [48, 49, 50, 49], 4, true, isPlayer);
		animation.add('bobdead', [51], 0, false, isPlayer);
		animation.add('bf-baby', [52, 53], 0, false, isPlayer);
		animation.add('bf-baby-goblin', [54, 55], 0, false, isPlayer);
		animation.add('happy-baby', [24, 25], 0, false, isPlayer);
		animation.add('kitty', [56, 57], 0, false, isPlayer);
		animation.add('myth', [24, 25], 0, false, isPlayer);
		animation.add('window-watcher', [58, 59], 0, false, isPlayer);
		animation.add('glassgoblin', [60, 61], 0, false, isPlayer);
		animation.add('glassbaby', [62, 63], 0, false, isPlayer);
		animation.play(char);

		switch(char)
		{
			case 'bf-pixel' | 'senpai' | 'senpai-angry' | 'spirit' | 'gf-pixel':
				antialiasing = false;
		}

		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}

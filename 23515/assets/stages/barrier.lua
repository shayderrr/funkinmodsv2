function onCreate()
	-- background shit
	makeAnimatedLuaSprite('bg','asgore/asgore_Fondo',-350, -150)
	addAnimationByPrefix('bg','idle','bg',24,true);
	setScrollFactor('stageback', 1, 1);
	scaleObject('bg', 0.85, 0.85)
	objectPlayAnimation('bg','idle',true);
	

	addLuaSprite('bg', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
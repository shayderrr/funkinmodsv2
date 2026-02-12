function onCreate()
	-- background shit
	makeLuaSprite('bg','asgore/stage_asgore_dark',-350, -150)
	scaleObject('bg', 0.85, 0.85)
	

	addLuaSprite('bg', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
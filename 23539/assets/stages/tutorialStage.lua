local lol = 0
function onCreate()

	makeLuaSprite('theParkin','parkin',-6100,50)
	addLuaSprite('theParkin',false)
	setLuaSpriteScrollFactor('parkin', 1.0, 1.0)

	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-dead-tuto');
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'bf_dead_1');
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'bf_gameover_1');
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'bf_accept_1');

end

function onBeatHit()

end

function onStepHit()

end

function onUpdate()
	lol = lol + 1;
setProperty('dad.x',getProperty('dad.x')-1)
setProperty('boyfriend.x',getProperty('boyfriend.x')-1)
setProperty('gf.x',getProperty('gf.x')-1)

end
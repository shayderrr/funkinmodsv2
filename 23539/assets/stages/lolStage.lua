local angleshit = 1;
local anglevar = 1;
function onCreate()

	makeLuaSprite('theSky2','sky2',-500,-200)
	addLuaSprite('theSky2',false)
	setLuaSpriteScrollFactor('theSky2', 0.9, 0.5)

	makeAnimatedLuaSprite('back','prado',-1000,-200)
	addAnimationByPrefix('back','floor','backfloor',24,true)
	addLuaSprite('back',false)

	makeAnimatedLuaSprite('trees','arboles',-400,-400)
	addAnimationByPrefix('trees','park','treespark',24,true)
	addLuaSprite('trees',false)

	makeAnimatedLuaSprite('floor','piso',-400,-200)
	addAnimationByPrefix('floor','sand','floorsand',24,true)
	addLuaSprite('floor',false)

	makeAnimatedLuaSprite('sillones','seat',330,30)
	addAnimationByPrefix('sillones','back','sillonesback',24,true)
	addLuaSprite('sillones',false)

	makeAnimatedLuaSprite('car','carrito',150,-15)
	addAnimationByPrefix('car','front','carfront',24,true)
	addLuaSprite('car',true)

	makeLuaSprite('theCarback2','carback2',900,-200)
	addLuaSprite('theCarback2',false)
	setLuaSpriteScrollFactor('theCarback2', 0.9, 0.9)	

	makeLuaSprite('theCarfront2','carfront2',550,-500)
	addLuaSprite('theCarfront2',true)
	setLuaSpriteScrollFactor('theCarfront2', 0.9, 0.9)	

end

function onBeatHit()--for every beat

	if curBeat < 388 then
		triggerEvent('Add Camera Zoom', 0.04,0.05)

		if curBeat % 2 == 0 then
			angleshit = anglevar;
		else
			angleshit = -anglevar;
		end
		setProperty('camHUD.angle',angleshit*3)
		setProperty('camGame.angle',angleshit*3)
		doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'circOut')
		doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.001, 'linear')
		doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'circOut')
		doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.001, 'linear')
	else
		setProperty('camHUD.angle',0)
		setProperty('camHUD.x',0)
		setProperty('camHUD.x',0)
	end
		
end

function onStepHit()
	if curBeat < 388 then
		if curStep % 4 == 0 then
			doTweenY('rrr', 'camHUD', -12, stepCrochet*0.002, 'circOut')
			doTweenY('rtr', 'camGame.scroll', 12, stepCrochet*0.002, 'sineIn')
		end
		if curStep % 4 == 2 then
			doTweenY('rir', 'camHUD', 0, stepCrochet*0.002, 'sineIn')
			doTweenY('ryr', 'camGame.scroll', 0, stepCrochet*0.002, 'sineIn')
		end
	end
end
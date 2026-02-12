local angleshit = 1;
local anglevar = 1;
local xx = 600
local yy = 350
local xx2 = 1600
local yy2 = 750
local ofs = 40
local zoomshit = 0;
local followchars = true
local camSpeed = 4;
local camInt = 1;
function onCreate()

	makeLuaSprite('theSky','sky',-500,-500)
	addLuaSprite('theSky',false)
	setLuaSpriteScrollFactor('sky', 0.8, 0.8)

	makeLuaSprite('theCity','city',-300,350)
	addLuaSprite('theCity',false)
	setLuaSpriteScrollFactor('theCity', 0.5, 0.8)

	makeLuaSprite('theBackground','background',-150,490)
	addLuaSprite('theBackground',false)
	setLuaSpriteScrollFactor('theBackground', 0.6, 0.9)

	makeLuaSprite('theGround','ground',-100,500)
	addLuaSprite('theGround',false)
	setLuaSpriteScrollFactor('Theground', 0.8, 0.8)

	makeAnimatedLuaSprite('super','aura',-270,-420)
	addAnimationByPrefix('super','sayan','supersayan',24,true)
	addLuaSprite('super',false)

	makeAnimatedLuaSprite('muscle','musculoso',1780,450)
	addAnimationByPrefix('muscle','man','muscleman',24,false)
	addLuaSprite('muscle',false)

	makeAnimatedLuaSprite('skips','employees',1800,700)
	addAnimationByPrefix('skips','pops','skipspops',24,false)
	addLuaSprite('skips',false)

	makeAnimatedLuaSprite('benson','scream',500,210)
	addAnimationByPrefix('benson','lol','bensonlol',24,true)
	addAnimationByPrefix('benson','fire','bensonfire',24,true)
	addLuaSprite('benson',false)

	makeLuaSprite('theTree','tree',1500,-300)
	addLuaSprite('theTree',true)
	setLuaSpriteScrollFactor('theTree', 0.5, 0.1)

	makeAnimatedLuaSprite('negron','resplandor',-500,-500)
	addAnimationByPrefix('negron','block','negronblock',24,true)
	addAnimationByPrefix('negron','blackin','negronblackin',24,true)
	addLuaSprite('negron',true)

	makeAnimatedLuaSprite('explo','explosion',-300,-300)
	addAnimationByPrefix('explo','ton','exploton',24,true)
	addAnimationByPrefix('explo','tion','explotion',24,true)
	addLuaSprite('explo',true)

	makeAnimatedLuaSprite('whi','blanco',-500,-500)
	addAnimationByPrefix('whi','to','whito',24,true)
	addAnimationByPrefix('whi','te','white',24,true)
	addLuaSprite('whi',true)
	scaleObject('whi', 2.0, 2.0);

	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-danger');
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'bf_dead_3');
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver');
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'bf_accept_3');

end

function onBeatHit()
	objectPlayAnimation('muscle','man',true)
	objectPlayAnimation('skips','pops',true)

	if curBeat % 2 == 0 then
		objectPlayAnimation('skips','pops',true)
	end

	if curBeat > 55 then
		setProperty('defaultCamZoom',1.5)
	end

	if curBeat > 64 then
		if mustHitSection then
			setProperty('defaultCamZoom',1.2);
		else
			setProperty('defaultCamZoom',0.9);
		end
	end

	if curBeat == 64 then
		objectPlayAnimation('negron','blackin',true)
	end

	if curBeat == 64 then
		objectPlayAnimation('benson','fire',true)
		setProperty('benson.y',getProperty('benson.y')+0)
	end

	if curBeat == 68 then
		objectPlayAnimation('negron','block',true)
	end

	if curBeat == 128 then
		objectPlayAnimation('negron','blackin',true)
	end

	if curBeat == 128 then
		objectPlayAnimation('benson','lol',true)
		setProperty('benson.y',getProperty('benson.y')+0)
	end

	if curBeat == 132 then
		objectPlayAnimation('negron','block',true)
	end

	if curBeat == 256 then
		objectPlayAnimation('negron','blackin',true)
	end

	if curBeat == 256 then
		objectPlayAnimation('benson','fire',true)
		setProperty('benson.y',getProperty('benson.y')+0)
	end

	if curBeat == 260 then
		objectPlayAnimation('negron','block',true)
	end

	if curBeat == 384 then
		objectPlayAnimation('explo','tion',true)
	end

	if curBeat == 387 then
		objectPlayAnimation('explo','ton',true)
	end

	if curBeat == 387 then
		objectPlayAnimation('whi','te',true)
	end

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

	if mustHitSection then
		setProperty('defaultCamZoom',1.2);
	else
		setProperty('defaultCamZoom',0.9);

	end  
end

function onUpdate()

    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
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
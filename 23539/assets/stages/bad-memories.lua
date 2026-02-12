local angleshit = 1;
local anglevar = 1;
local xx = 1150
local yy = -50
local xx2 = 1170
local yy2 = 370
local xx3 = 146
local yy3 = 103
local xx4 = 96.05
local yy4 = -87.1
local ofs = 40
local zoomshit = 0;
local followchars = true
local camSpeed = 4;
local camInt = 1;
local modchart = true
function onCreate()

	makeAnimatedLuaSprite('sad','triste',250,-300)
	addAnimationByPrefix('sad','1','sad1',24,true)
    addAnimationByPrefix('sad','a','sada',24,true)
	addLuaSprite('sad',false)

    makeAnimatedLuaSprite('angry','enojado',-200,-1070)
	addAnimationByPrefix('angry','a','angrya',24,true)
    addAnimationByPrefix('angry','1','angry1',24,true)
	addLuaSprite('angry',false)

    makeAnimatedLuaSprite('benson','bensons',-80,-50)
	addAnimationByPrefix('benson','0','benson0',24,true)
	addAnimationByPrefix('benson','1','benson1',24,true)
    addAnimationByPrefix('benson','2','benson2',24,true)
    addAnimationByPrefix('benson','3','benson3',24,true)
	addAnimationByPrefix('benson','4','benson4',24,true)
    addAnimationByPrefix('benson','5','benson5',24,true)
    addAnimationByPrefix('benson','6','benson6',24,true)
	addAnimationByPrefix('benson','7','benson7',24,true)
    addAnimationByPrefix('benson','8','benson8',24,true)
	addLuaSprite('benson',true)
    setLuaSpriteScrollFactor('benson',0,0)

    makeAnimatedLuaSprite('negron','blackon',-650,-400)
	addAnimationByPrefix('negron','block','negronblock',24,true)
    addAnimationByPrefix('negron','blackin','negronblackin',24,true)
	addLuaSprite('negron',true)
    setLuaSpriteScrollFactor('negron',0,0)

    makeAnimatedLuaSprite('scenery','F',-350,-250)
	addAnimationByPrefix('scenery','1','scenery1',24,true)
    addAnimationByPrefix('scenery','2','scenery2',24,true)
    addAnimationByPrefix('scenery','3','scenery3',24,true)
	addLuaSprite('scenery',true)
    setLuaSpriteScrollFactor('scenery',0,0)

	setPropertyFromClass('GameOverSubstate', 'characterName', 'benson-sad');
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'benson_dead');
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'benson_gameover');
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'benson_accept');
end

function onBeatHit()

    if curBeat == 11 then
		objectPlayAnimation('scenery','2',true)
	end

    if curBeat == 16 then
		objectPlayAnimation('scenery','3',true)
	end

    if curBeat == 112 then
		objectPlayAnimation('negron','blackin',true)
	end

    if curBeat == 112 then
		objectPlayAnimation('sad','a',true)
	end

    if curBeat == 112 then
		objectPlayAnimation('angry','1',true)
	end

    if curBeat == 117 then
		objectPlayAnimation('negron','block',true)
	end

    if curBeat == 176 then
		objectPlayAnimation('negron','blackin',true)
	end

    if curBeat == 176 then
		objectPlayAnimation('sad','1',true)
	end

    if curBeat == 176 then
		objectPlayAnimation('angry','a',true)
	end

    if curBeat == 181 then
		objectPlayAnimation('negron','block',true)
	end

    if curBeat == 208 then
		objectPlayAnimation('negron','blackin',true)
	end

    if curBeat == 208 then
		objectPlayAnimation('sad','a',true)
	end

    if curBeat == 208 then
		objectPlayAnimation('angry','1',true)
	end

    if curBeat == 213 then
		objectPlayAnimation('negron','block',true)
	end

    if curBeat == 272 then
		objectPlayAnimation('negron','blackin',true)
	end

    if curBeat == 272 then
		objectPlayAnimation('sad','1',true)
	end

    if curBeat == 272 then
		objectPlayAnimation('angry','a',true)
	end

    if curBeat == 277 then
		objectPlayAnimation('negron','block',true)
	end

    if curBeat == 304 then
		objectPlayAnimation('negron','blackin',true)
	end
	
    if curBeat == 304 then
		objectPlayAnimation('benson','1',true)
	end

	if curBeat == 308 then
		objectPlayAnimation('benson','2',true)
	end

    if curBeat == 309 then
		objectPlayAnimation('negron','block',true)
	end

	if curBeat == 312 then
		objectPlayAnimation('benson','3',true)
	end

	if curBeat == 316 then
		objectPlayAnimation('benson','4',true)
	end

	if curBeat == 320 then
		objectPlayAnimation('benson','5',true)
	end

	if curBeat == 324 then
		objectPlayAnimation('benson','6',true)
	end

	if curBeat == 328 then
		objectPlayAnimation('benson','7',true)
	end

	if curBeat == 332 then
		objectPlayAnimation('benson','8',true)
	end

	if curBeat == 336 then
		objectPlayAnimation('benson','0',true)
	end

    if curBeat == 336 then
		objectPlayAnimation('negron','blackin',true)
	end

    if curBeat == 336 then
		objectPlayAnimation('sad','a',true)
	end

    if curBeat == 336 then
		objectPlayAnimation('angry','1',true)
	end

    if curBeat == 341 then
		objectPlayAnimation('negron','block',true)
	end

    if curBeat == 368 then
		objectPlayAnimation('negron','blackin',true)
	end

    if curBeat == 368 then
		objectPlayAnimation('sad','1',true)
	end

    if curBeat == 368 then
		objectPlayAnimation('angry','a',true)
	end

    if curBeat == 373 then
		objectPlayAnimation('negron','block',true)
	end

    if curBeat == 400 then
		objectPlayAnimation('negron','blackin',true)
	end

    if curBeat == 400 then
		objectPlayAnimation('sad','a',true)
	end

    if curBeat == 400 then
		objectPlayAnimation('angry','1',true)
	end

    if curBeat == 405 then
		objectPlayAnimation('negron','block',true)
	end

    if curBeat == 464 then
		objectPlayAnimation('negron','blackin',true)
	end

    if curBeat == 464 then
		objectPlayAnimation('sad','1',true)
	end

    if curBeat == 464 then
		objectPlayAnimation('angry','a',true)
	end

    if curBeat == 469 then
		objectPlayAnimation('negron','block',true)
	end

    if mustHitSection then
		setProperty('defaultCamZoom',1.0);
	else
		setProperty('defaultCamZoom',0.5);

	end

end

function opponentNoteHit(id,data,type,sus)
	triggerEvent('Screen Shake','0.2,0.008','0.2,0.008')
end

function onUpdate(elapsed)

	if modchart == true then
		for i = 0,3 do
			setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
		end
	end

	if charsloaded == 2 then --see i did this before onCreatePost existed
		setProperty('boyfriend.scrollFactor.x', 1.4);
		setProperty('boyfriend.scrollFactor.y', 1.4);
		setObjectOrder('boyfriend',getObjectOrder('dad'));
		setProperty('gf.visible', false);
		--setObjectOrder('shad',getObjectOrder('dad'));

		



	end



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

end

function onGameOver()
	modchart = false
	return Function_Continue;
end
local charsloaded = 6;
local bfx = 536;
local bfy = -83;
local gfx = 846.95;
local gfy = -287;
local xx = 600
local yy = 300
local xx2 = 936
local yy2 = 400
local xx3 = 146
local yy3 = 103
local xx4 = 96.05
local yy4 = -87.1
local ofs = 40
local zoomshit = 0;
local followchars = true
local camSpeed = 4;
local camInt = 1;
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
	setLuaSpriteScrollFactor('thecarback2', 0.9, 0.9)	

	makeLuaSprite('theCarfront2','carfront2',550,-500)
	addLuaSprite('theCarfront2',true)
	setLuaSpriteScrollFactor('theCarfront2', 0.9, 0.9)

	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-dead-car');
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'bf_dead_2');
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'bf_gameover_2');
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'bf_accept_2');

end

function onBeatHit()

	if mustHitSection then
		setProperty('defaultCamZoom',0.9);
	else
		setProperty('defaultCamZoom',1.1);

	end  
end

function onUpdate()
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
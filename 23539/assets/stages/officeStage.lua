local charsloaded = 6;
local xx = 226
local yy = 468
local xx2 = 450
local yy2 = 470
local ofs = 40
local followchars = true
local camSpeed = 4;
local camInt = 1;
function onCreate()

	makeLuaSprite('theOffice','office',-500,-120)
	addLuaSprite('theOffice',false)
	setLuaSpriteScrollFactor('theOffice', 0.7, 0.7)

	setPropertyFromClass('GameOverSubstate', 'characterName', 'pops-dead');
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'pops_dead');
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'pops_gameover');
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'pops_accept');

end

function onBeatHit()

end

function onStepHit()

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
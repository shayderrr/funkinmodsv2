function onCreate()
	addCharacterToList('bf-stand', 'boyfriend')
	addCharacterToList('tv', 'dad')
	addCharacterToList('phase2', 'dad')
	addCharacterToList('phase3', 'dad')
	addCharacterToList('pixel', 'dad')
	makeAnimatedLuaSprite('intro', 'intro', 0, 0);
	addAnimationByPrefix('intro', 'intro', 'intro', 30, false);
	addAnimationByPrefix('intro', 'glow', 'glow', 30, false);
	addAnimationByPrefix('intro', 'empty', 'empty', 30, false);
	addAnimationByPrefix('intro', 'rise', 'rise', 30, false);
	objectPlayAnimation('intro', 'empty', true);
	setProperty('intro.antialiasing',false)
	addLuaSprite('intro', false)
	setProperty('intro.alpha', 0)
end
function onCreatePost()
	setProperty('dad.visible', false)
	setProperty('iconP2.antialiasing',false)
end
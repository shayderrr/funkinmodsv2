local changeArrows = true
function onCreate()
  makeLuaSprite('room', 'room', -1100, -600)    
  --
  addLuaSprite('room', false)

  makeLuaSprite('black', 'black', 0, 0)    
  addLuaSprite('black', false)
  screenCenter('black','xy')
  setProperty('black.alpha', 0);

  makeLuaSprite('bottle', 'bottle', 950, 320)    
  addLuaSprite('bottle', true)
  makeLuaSprite('rtx', 'rtx', -120, -400)    
  addLuaSprite('rtx', true)

  makeLuaSprite('bars', 'bars', 0, 0)    
  addLuaSprite('bars', true)
  screenCenter('bars','xy')
  setObjectCamera('bars', 'camHUD')



  makeAnimatedLuaSprite('window1', 'window1', 30, 820);
  addAnimationByPrefix('window1', 'Window1', 'Window1', 24, true)
  setObjectCamera('window1', 'other')
  scaleObject('window1', 0.8, 0.8);
  addLuaSprite('window1', true);
  objectPlayAnimation('window1', 'Window1', true)

  makeAnimatedLuaSprite('window2', 'window2', 850, 820);
  addAnimationByPrefix('window2', 'Window2', 'Window2', 24, true)
  setObjectCamera('window2', 'other')
  scaleObject('window2', -0.8, 0.8);
  addLuaSprite('window2', true);
  objectPlayAnimation('window2', 'Window2', true)
  
end

function onUpdate(elapsed)
  setProperty('gf.alpha',0)
  if changeArrows then
    changeArrows = false;
    doTweenZoom('camz','camGame',1.3,1,'expoOut')

   for i = 0,7 do
    setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
   end
    noteTweenX('strumLineNotesP4', 0, 732, 0.0001, 'linear')
    noteTweenX('strumLineNotesP5', 1, 844, 0.0001, 'linear')
    noteTweenX('strumLineNotesP6', 2, 956, 0.0001, 'linear')
    noteTweenX('strumLineNotesP7', 3, 1068, 0.0001, 'linear')

    noteTweenX('strumLineNotesP42', 4, 92, 0.0001, 'linear')
    noteTweenX('strumLineNotesP52', 5, 204, 0.0001, 'linear')
    noteTweenX('strumLineNotesP62', 6, 316, 0.0001, 'linear')
    noteTweenX('strumLineNotesP72', 7, 428, 0.0001, 'linear')
  end

  if curStep == 1 then 
    makeLuaText('you', 'You here.', 9999, 500)
    addLuaText('you')
    setObjectCamera('you', 'camother')
    setTextColor('you', 'FFFFFF')
    setTextBorder('you', '3', '000000')
    setTextSize('you', '25')
    screenCenter('you','xy')
    setProperty('you.y', 10);
    setProperty('you.x', -4359.5 - 318);
    
    setProperty('you.alpha', 1);
    for i = 0,7 do
      setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
     end
  end

  if curStep == 2 then 
    for i = 0,7 do
      setPropertyFromGroup('strumLineNotes', i, 'alpha', 1)
     end
  end

  if curStep == 3 then 
    for i = 0,7 do
      setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
      noteTweenY('strumLineNotes2' .. i, i, 100, 1, 'quintInOut')
     end

    
  end

  if curStep == 935 then 
    doTweenY('window1','window1', 280, 0.7,'quintInOut');
    doTweenY('window2','window2', 280, 0.7,'quintInOut');
  end

  if curStep == 943 then 
    doTweenY('window1','window1', 820, 0.5,'quintInOut');
    doTweenY('window2','window2', 820, 0.5,'quintInOut');
  end

  if curStep == 48 then
    setProperty('you.alpha', 0);
    doTweenZoom('camz','camGame',0.95,1,'expoOut')
  end

  if curStep == 61 then
    for i = 0,7 do
      noteTweenAlpha('strmLineNotes2' .. i, i, 1, 0.3, 'sineInOut')
      noteTweenY('strumLineNotes2' .. i, i, 50, 0.4, 'quintInOut')
     end
    doTweenZoom('camz','camGame',0.80,1,'expoOut')

    

  end

  if curStep == 16 then 
    makeLuaText('today', 'Today we are here with, Banbuds.', 9999, 500)
    addLuaText('today')
    setObjectCamera('today', 'camother')
    setTextColor('today', 'F9B3CD')
    setTextBorder('today', '3', '1A1A26')
    setTextSize('today', '25')
    screenCenter('today','xy')
    setProperty('today.y', 530);
    setProperty('today.alpha', 0);
    
  end

  if curStep == 16 then 
    makeLuaText('today', 'Today we are here with, Banbuds.', 9999, 500)
    addLuaText('today')
    setObjectCamera('today', 'camother')
    setTextColor('today', 'A03943')
    setTextBorder('today', '3', '410F19')
    setTextSize('today', '25')
    screenCenter('today','xy')
    setProperty('today.y', 530);
  end

  if curStep == 30 then 
    makeLuaText('today', 'How are you banbuds?', 9999, 500)
    addLuaText('today')
    setObjectCamera('today', 'camother')
    setTextColor('today', 'A03943')
    setTextBorder('today', '3', '410F19')
    setTextSize('today', '25')
    screenCenter('today','xy')
    setProperty('today.y', 530);
  end

  if curStep == 41 then 
    setProperty('today.alpha', 0);
  end

  if curStep == 47 then 
    makeLuaText('yeaa', 'yea...', 9999, 500)
    addLuaText('yeaa')
    setObjectCamera('yeaa', 'camother')
    setTextColor('yeaa', '888E97')
    setTextBorder('yeaa', '3', '303343')
    setTextSize('yeaa', '25')
    screenCenter('yeaa','xy')
    setProperty('yeaa.y', 530);
  end

  if curStep == 58 then 
    makeLuaText('today', 'I see..', 9999, 500)
    addLuaText('today')
    setObjectCamera('today', 'camother')
    setTextColor('today', 'A03943')
    setTextBorder('today', '3', '410F19')
    setTextSize('today', '25')
    screenCenter('today','xy')
    setProperty('today.y', 530);
    setProperty('today.alpha', 1);
    setProperty('yeaa.alpha', 0);
  end

  if curStep == 65 then 
    makeLuaText('today', 'I see..', 9999, 500)
    addLuaText('today')
    setObjectCamera('today', 'camother')
    setTextColor('today', 'A03943')
    setTextBorder('today', '3', '410F19')
    setTextSize('today', '25')
    screenCenter('today','xy')
    setProperty('today.y', 530);
    doTweenAlpha('today','today', 0, 0.5,'quadInOut');
    cutscene = true
  end

  if curStep == 910 then 
    
    makeLuaText('today', 'Is that true, that you are gay?', 9999, 500)
    addLuaText('today')
    setObjectCamera('today', 'camother')
    setTextColor('today', 'A03943')
    setTextBorder('today', '3', '410F19')
    setTextSize('today', '25')
    screenCenter('today','xy')
    setProperty('today.y', 530);
    setProperty('today.alpha', 1);
  end

  if curStep == 926 then 
    setProperty('today.alpha', 0);
  end

  if curStep == 927 then 
    makeLuaText('yeaa', 'hu-hu', 9999, 500)
    addLuaText('yeaa')
    setObjectCamera('yeaa', 'camother')
    setTextColor('yeaa', '888E97')
    setTextBorder('yeaa', '3', '303343')
    setTextSize('yeaa', '25')
    screenCenter('yeaa','xy')
    setProperty('yeaa.y', 530);
    setProperty('yeaa.alpha', 1);
  end

  if curStep == 932 then 

    setProperty('yeaa.alpha', 0);
  end

  if curStep == 937 then 
    setProperty('yeaa.alpha', 1);
    makeLuaText('yeaa', 'No.', 9999, 500)
    addLuaText('yeaa')
    setObjectCamera('yeaa', 'camother')
    setTextColor('yeaa', '888E97')
    setTextBorder('yeaa', '3', '303343')
    setTextSize('yeaa', '25')
    screenCenter('yeaa','xy')
    setProperty('yeaa.y', 530);
  end

  if curStep == 945 then 
    setProperty('yeaa.alpha', 0);
  end

  if curStep == 954 then 
    setProperty('today.alpha', 1);
    makeLuaText('today', 'I see......', 9999, 500)
    addLuaText('today')
    setObjectCamera('today', 'camother')
    setTextColor('today', 'A03943')
    setTextBorder('today', '3', '410F19')
    setTextSize('today', '25')
    screenCenter('today','xy')
    setProperty('today.y', 530);
  end

  if curStep == 960 then 
    
    doTweenAlpha('today','today', 0, 0.5,'quadInOut');
    doTweenZoom('camz','camGame',0.80,1,'expoOut')
    for i = 0,7 do
      setPropertyFromGroup('strumLineNotes', i, 'alpha', 1)
     end

  end

  if curStep == 896 then 
    doTweenZoom('camz','camGame',0.80,0.7,'expoOut')
    for i = 0,7 do
      setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
     end

  end

  if curStep == 897 then 
    for i = 0,7 do
      setPropertyFromGroup('strumLineNotes', i, 'alpha', 1)
     end
  end

  if curStep == 898 then 
    for i = 0,7 do
      setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
     end
  end


  if curStep == 917 then 
      doTweenZoom('camz','camGame',1.20,0.1,'quadInOut')
  end

  if curStep == 943 then 
    doTweenZoom('camz','camGame',1.35,0.0001,'quadInOut')
    doTweenZoom('camz','camGame',0.80,0.1,'quadInOut')
  end 

  if curStep == 1152 then 
    setProperty('black.alpha', 0.3);

  end

  if curStep == 1216 then 
    setProperty('black.alpha', 0.6);
  end

  if curStep == 1280 then 
    setProperty('black.alpha', 0.8);
  end


end
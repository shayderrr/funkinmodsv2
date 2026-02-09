local u = false;
local r = 0;
local health = 0;
local xx = 500;
local yy = 300;
local xx2 = 850;
local yy2 = 400;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;

function onCreate()
    -- background shit
    makeLuaSprite('bedroom', 'bedroom', -410, -150);
    setLuaSpriteScrollFactor('bedroom', 0.95, 0.95);

    addLuaSprite('bedroom', false);
scaleObject('bedroom', 1.2, 1.2);

    -- bars shit
    makeLuaSprite('bars', 'bars', -410, -150);
    setLuaSpriteScrollFactor('bars', 0.95, 0.95);

    addLuaSprite('bars', true);
scaleObject('bars', 1.2, 1.2);

end

function onUpdate()
setProperty("gf.alpha", 0);

end
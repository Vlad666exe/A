function onCreate()
makeAnimatedLuaSprite('HappyThoughts', 'doki/PaperBG', -600, -400);
addAnimationByPrefix('HappyThoughts', 'idle', 'PaperBG0', 24, true);
objectPlayAnimation('HappyThoughts', 'idle', false);
scaleLuaSprite('HappyThoughts', 3.0, 3.0);
setLuaSpriteScrollFactor('HappyThoughts', 0.5, 0.5);
addLuaSprite('HappyThoughts', false);

if not lowQuality then
makeAnimatedLuaSprite('stagnant_glitch', 'doki/stagnant_glitch', 0, 0);
addAnimationByPrefix('stagnant_glitch', 'idle', 'sadface 2', 24, true);
objectPlayAnimation('stagnant_glitch', 'idle', false);
scaleLuaSprite('stagnant_glitch', 4, 4);
addLuaSprite('stagnant_glitch', false);
setObjectCamera('stagnant_glitch', 'hud');
end

makeLuaSprite('SpaceClassroomOutside', 'doki/Sky', -600, -400);
scaleLuaSprite('SpaceClassroomOutside', 3.0, 3.0);
setLuaSpriteScrollFactor('SpaceClassroomOutside', 0.5, 0.5);
addLuaSprite('SpaceClassroomOutside', false);

if not lowQuality then
makeLuaSprite('Clouds1', 'doki/Clouds', -600, -400);
scaleLuaSprite('Clouds1', 3.0, 3.0);
setLuaSpriteScrollFactor('Clouds1', 0.5, 0.5);
addLuaSprite('Clouds1', false);

makeLuaSprite('Clouds2', 'doki/Mask', -600, -400);
scaleLuaSprite('Clouds2', 3.0, 3.0);
setLuaSpriteScrollFactor('Clouds2', 0.5, 0.5);
addLuaSprite('Clouds2', false);
doTweenAlpha('Clouds2FD', 'Clouds2', 0, 0.001, 'linear')
end

makeLuaSprite('SpaceClassroomInside', 'doki/BG', -600, -400);
scaleLuaSprite('SpaceClassroomInside', 3.0, 3.0);
setLuaSpriteScrollFactor('SpaceClassroomInside', 1.0, 1.0);
addLuaSprite('SpaceClassroomInside', false);

makeAnimatedLuaSprite('SpaceClassroomSketch', 'doki/BGsketch', -600, -400);
addAnimationByPrefix('SpaceClassroomSketch', 'idle', 'BGSketch0', 24, true);
objectPlayAnimation('SpaceClassroomSketch', 'idle', false);
scaleLuaSprite('SpaceClassroomSketch', 3.0, 3.0);
setLuaSpriteScrollFactor('SpaceClassroomSketch', 1.0, 1.0);
addLuaSprite('SpaceClassroomSketch', false);
doTweenAlpha('SpaceClassroomSketchFD', 'SpaceClassroomSketch', 0, 0.001, 'linear')

if not lowQuality then
makeLuaSprite('WinLight', 'doki/WindowLight', -600, -400);
scaleLuaSprite('WinLight', 6.0, 6.0);
setLuaSpriteScrollFactor('WinLight', 1.0, 1.0);
addLuaSprite('WinLight', false);
doTweenAlpha('WinLightFD', 'WinLight', 0, 0.001, 'linear')
end

makeLuaSprite('ClubroomCloset', 'doki/DDLCfarbg', -600, -400);
scaleLuaSprite('ClubroomCloset', 1.5, 1.5);
setLuaSpriteScrollFactor('ClubroomCloset', 1.0, 1.0);
addLuaSprite('ClubroomCloset', false);

makeLuaSprite('Clubroom', 'doki/DDLCbg', -600, -400);
scaleLuaSprite('Clubroom', 1.5, 1.5);
setLuaSpriteScrollFactor('Clubroom', 1.0, 1.0);
addLuaSprite('Clubroom', false);

makeLuaSprite('ClubroomSeats', 'doki/DesksFront', -600, -400);
scaleLuaSprite('ClubroomSeats', 1.5, 1.5);
setLuaSpriteScrollFactor('ClubroomSeats', 1.0, 1.0);
scaleObject('ClubroomSeats', 3, 3);
addLuaSprite('ClubroomSeats', false);

if not lowQuality then 
makeLuaSprite('gradent', 'doki/gradent', -600, -400);
scaleLuaSprite('gradent', 6.0, 6.0);
setLuaSpriteScrollFactor('gradent', 1.0, 1.0);
addLuaSprite('gradent', true);
doTweenColor('gradentColorTween', 'gradent', '000000', 0.0001, 'cubeIn')
doTweenAlpha('gradentFD', 'gradent', 0, 0.001, 'linear')
end

makeLuaSprite('DaVignette', 'doki/vignette', -300, 0);
scaleLuaSprite('DaVignette', 1.5, 1.5);
setObjectCamera('DaVignette', 'hud');
setLuaSpriteScrollFactor('DaVignette', 1.0, 1.0);
addLuaSprite('DaVignette', false);
doTweenAlpha('DaVignetteFD', 'DaVignette', 0, 0.001, 'linear')
end

function onSongStart()
setProperty('stagnant_glitch.visible', false)
end

function onStepHit()
if curStep == 256 then
setProperty('stagnant_glitch.visible', true)
end if curStep == 278 or curStep == 534 or curStep == 790 then
setProperty('stagnant_glitch.visible', true)
elseif curStep == 288 then
doTweenAlpha('gradentFD', 'gradent', 1, 0.001, 'linear')
setProperty('stagnant_glitch.visible', false)
setProperty('ClubroomCloset.visible', false)
setProperty('Clubroom.visible', false)
setProperty('ClubroomSeats.visible', false)
setProperty('stagnant_glitch.visible', false)
elseif curStep == 544 then
doTweenAlpha('gradentFD', 'gradent', 0, 0.001, 'linear')
setProperty('ClubroomCloset.visible', true)
setProperty('Clubroom.visible', true)
setProperty('ClubroomSeats.visible', true)
setProperty('stagnant_glitch.visible', false)
elseif curStep == 800 then
setProperty('ClubroomCloset.visible', false)
setProperty('Clubroom.visible', false)
setProperty('ClubroomSeats.visible', false)
setProperty('stagnant_glitch.visible', false)
elseif curStep == 1056 or curStep == 2280 then
doTweenAlpha('SpaceClassroomSketchFD', 'SpaceClassroomSketch', 1, 2, 'linear')
elseif curStep == 1302 then
makeAnimatedLuaSprite('TransitionShit', 'doki/PoemTransition', -260, -160)
addAnimationByPrefix('TransitionShit', 'dance', 'poemtransition0', 24, true)
objectPlayAnimation('TransitionShit', 'dance', false)
scaleLuaSprite('TransitionShit', 3, 3)
setLuaSpriteScrollFactor('TransitionShit', 0, 0)
addLuaSprite('TransitionShit', true)
elseif curStep == 1312 then
setProperty('Clouds1.visible', false)
setProperty('Clouds2.visible', false)
setProperty('WinLight.visible', false)
setProperty('TransitionShit.visible', false)
setProperty('SpaceClassroomInside.visible', false)
setProperty('SpaceClassroomOutside.visible', false)
doTweenAlpha('SpaceClassroomSketchFD', 'SpaceClassroomSketch', 0, 0.001, 'linear')
elseif curStep == 1824 then
setProperty('Clouds1.visible', true)
setProperty('Clouds2.visible', true)
setProperty('WinLight.visible', true)
setProperty('SpaceClassroomInside.visible', true)
setProperty('SpaceClassroomOutside.visible', true)
doTweenAlpha('DaVignetteFD', 'DaVignette', 1, 0.001, 'linear')
elseif curStep == 2326 then
makeAnimatedLuaSprite('TransitionShit', 'doki/PoemTransition', -260, -160)
addAnimationByPrefix('TransitionShit', 'dance', 'poemtransition0', 24, true)
objectPlayAnimation('TransitionShit', 'dance', false)
scaleLuaSprite('TransitionShit', 3, 3)
setLuaSpriteScrollFactor('TransitionShit', 0, 0)
addLuaSprite('TransitionShit', true)
elseif curStep == 2336 then
removeLuaSprite('DaVignette', false);
setProperty('TransitionShit.visible', false)
setProperty('Clouds1.visible', false)
setProperty('Clouds2.visible', false)
setProperty('WinLight.visible', false)
setProperty('SpaceClassroomInside.visible', false)
setProperty('SpaceClassroomOutside.visible', false)
doTweenAlpha('SpaceClassroomSketchFD', 'SpaceClassroomSketch', 0, 0.001, 'linear')
makeLuaSprite('DaVignette', 'doki/vignette', 0, 0);
scaleLuaSprite('DaVignette', 1, 1);
setObjectCamera('DaVignette', 'hud');
setLuaSpriteScrollFactor('DaVignette', 1.0, 1.0);
addLuaSprite('DaVignette', false);
doTweenAlpha('DaVignetteFD', 'DaVignette', 0.2, 0.001, 'linear')
elseif curStep == 2650 then
makeAnimatedLuaSprite('TransitionShit', 'doki/PoemTransition', -260, -160)
addAnimationByPrefix('TransitionShit', 'dance', 'poemtransition0', 24, false)
objectPlayAnimation('TransitionShit', 'dance', false)
scaleLuaSprite('TransitionShit', 3, 3)
setLuaSpriteScrollFactor('TransitionShit', 0, 0)
setObjectCamera('TransitionShit', 'hud')
setProperty('TransitionShit.alpha', 1)
addLuaSprite('TransitionShit', false)
elseif curStep == 2656 then
setProperty('camGame.visible',false)
setProperty('TransitionShit.alpha', 0)
doTweenAlpha("camHUD","camHUD", 0, 2, true);
end
end

function onBeatHit()
if curBeat % 34 == 0 then
doTweenAlpha('Clouds2FD', 'Clouds2', 1, 1, 'linear')
doTweenAlpha('WinLightFD', 'WinLight', 1, 1, 'linear')
runTimer('BgNormal',5)
end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag=='BgNormal' then
doTweenAlpha('Clouds2FD', 'Clouds2', 0, 1, 'linear')
doTweenAlpha('WinLightFD', 'WinLight', 0, 1, 'linear')
end
end
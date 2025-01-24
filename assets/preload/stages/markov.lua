function onCreate()
makeLuaSprite('PoemEnd', 'doki/markovend', -200, 50);
scaleLuaSprite('PoemEnd', 0.8, 0.8);
setLuaSpriteScrollFactor('PoemEnd', 1.0, 1.0);
scaleObject('PoemEnd', 1.6, 1.6);
addLuaSprite('PoemEnd', false);

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

if not lowQuality then
makeLuaSprite('WinLight', 'doki/WindowLight', -600, -400);
scaleLuaSprite('WinLight', 6.0, 6.0);
setLuaSpriteScrollFactor('WinLight', 1.0, 1.0);
addLuaSprite('WinLight', false);
doTweenAlpha('WinLightFD', 'WinLight', 0, 0.001, 'linear')

makeLuaSprite('DaVignette2', 'doki/shadow', -200, 50);
scaleLuaSprite('DaVignette2', 0.8, 0.8);
setLuaSpriteScrollFactor('DaVignette2', 1.0, 1.0);
scaleObject('DaVignette2', 1.6, 1.6);
addLuaSprite('DaVignette2', true);
end

makeLuaSprite('DarkCloset', 'doki/ClosetBG', -200, 50);
scaleLuaSprite('DarkCloset', 0.8, 0.8);
setLuaSpriteScrollFactor('DarkCloset', 1.0, 1.0);
scaleObject('DarkCloset', 1.6, 1.6);
addLuaSprite('DarkCloset', false);

makeLuaSprite('fade', 'doki/fadetransitionshit', 0, 0)
setObjectCamera('fade', 'other')
scaleLuaSprite('fade', 3.0, 3.0)
addLuaSprite('fade', false)
doTweenAlpha('fadeInn', 'fade', 0, 0.1, 'linear')
setProperty('fade.visible', false)

makeLuaSprite('DaVignette', 'doki/vignette', -300, 0)
scaleLuaSprite('DaVignette', 1.5, 1.5)
setObjectCamera('DaVignette', 'hud')
setLuaSpriteScrollFactor('DaVignette', 1.0, 1.0)
addLuaSprite('DaVignette', true)
setProperty('DaVignette.visible', false)

makeAnimatedLuaSprite('Eyess', 'doki/EyeMidwayBG', 0, 0);
addAnimationByPrefix('Eyess', 'idle', 'MidwayBG', 24, true);
objectPlayAnimation('Eyess', 'idle', false);
setObjectCamera('Eyess', 'hud')
scaleLuaSprite('Eyess', 1.4, 1.4);
addLuaSprite('Eyess', true);
doTweenAlpha("EyessFade","Eyess", 0, 0.1, true);

makeLuaSprite('Transparent', 'doki/transparent_cover', -300, 0)
scaleLuaSprite('Transparent', 3.0, 3.0)
setLuaSpriteScrollFactor('Transparent', 0, 0)
addLuaSprite('Transparent', true)
doTweenAlpha('Transparentnn', 'Transparent', 0, 0.1, 'linear')
setProperty('Transparent.visible', false)

makeAnimatedLuaSprite('BgBlood', 'doki/bgBloods', -200, 100);
addAnimationByPrefix('BgBlood', 'idle', 'bgBloods', 24, false);
objectPlayAnimation('BgBlood', 'idle', false);
scaleLuaSprite('BgBlood', 3, 3);
if not lowQuality then
addLuaSprite('BgBlood', false);
doTweenAlpha("BgBloodFade","BgBlood", 0, 0.1, true);
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

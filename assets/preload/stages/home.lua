function onCreate()
makeAnimatedLuaSprite('HappyThoughts', 'doki/PaperBG', -600, -400);
addAnimationByPrefix('HappyThoughts', 'idle', 'PaperBG0', 24, true);
objectPlayAnimation('HappyThoughts', 'idle', false);
scaleLuaSprite('HappyThoughts', 3.0, 3.0);
setLuaSpriteScrollFactor('HappyThoughts', 1.0, 1.0);
addLuaSprite('HappyThoughts', false);

makeAnimatedLuaSprite('NekoBaka', 'doki/BakaBGDoodles', -600, -400);
addAnimationByPrefix('NekoBaka', 'idle', 'Normal Overlay0', 24, true);
objectPlayAnimation('NekoBaka', 'idle', false);
scaleLuaSprite('NekoBaka', 3.0, 3.0);
setLuaSpriteScrollFactor('NekoBaka', 1.0, 1.0);
addLuaSprite('NekoBaka', false);

makeAnimatedLuaSprite('NekoBakaRuined', 'doki/BakaBGDoodles', -600, -400);
addAnimationByPrefix('NekoBakaRuined', 'idle', 'HOME Overlay0', 24, true);
objectPlayAnimation('NekoBakaRuined', 'idle', false);
scaleLuaSprite('NekoBakaRuined', 1.5, 1.5);
setLuaSpriteScrollFactor('NekoBakaRuined', 1.0, 1.0);
addLuaSprite('NekoBakaRuined', false);

makeLuaSprite('PoemMinigame', 'doki/notepad', 325, 225);
scaleLuaSprite('PoemMinigame', 1.5, 1.5);
setLuaSpriteScrollFactor('PoemMinigame', 1.0, 1.0);
addLuaSprite('PoemMinigame', false);

makeLuaSprite('GlitchedBGBack', 'doki/glitchback1', -625, -375);
scaleLuaSprite('GlitchedBGBack', 1.5, 1.5);
setLuaSpriteScrollFactor('GlitchedBGBack', 1.0, 1.0);
scaleObject('GlitchedBGBack', 3, 3);
addLuaSprite('GlitchedBGBack', false);

makeLuaSprite('GlitchedBG', 'doki/BGlitch', -625, -375);
scaleLuaSprite('GlitchedBG', 1.5, 1.5);
setLuaSpriteScrollFactor('GlitchedBG', 1.0, 1.0);
scaleObject('GlitchedBG', 3, 3);
addLuaSprite('GlitchedBG', false);

makeLuaSprite('GlitchedBGFront', 'doki/glitchfront1', -625, -375);
scaleLuaSprite('GlitchedBGFront', 1.5, 1.5);
setLuaSpriteScrollFactor('GlitchedBGFront', 1.0, 1.0);
scaleObject('GlitchedBGFront', 3, 3);
addLuaSprite('GlitchedBGFront', false);

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
end

makeLuaSprite('Memories', 'doki/HomeClubroom', -600, -400);
scaleLuaSprite('Memories', 1.5, 1.5);
setLuaSpriteScrollFactor('Memories', 1.0, 1.0);
scaleObject('Memories', 3, 3);
addLuaSprite('Memories', false);
setProperty('Memories.antialiasing', false)
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

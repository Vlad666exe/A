function onCreate()
addCharacterToList('yuri-closet','dad')
addCharacterToList('gf-realdoki','gf')
addCharacterToList('sadbf','boyfriend')

if not lowQuality then 
makeLuaSprite('roomlight', 'doki/roomlight', 0, 0)
setObjectCamera('roomlight', 'hud')
scaleLuaSprite('roomlight', 4, 4)
addLuaSprite('roomlight', false)

makeLuaSprite('vignetteEnd', 'doki/vignetteend', 0, 0)
setObjectCamera('vignetteEnd', 'hud')
scaleLuaSprite('vignetteEnd', 2, 2)
addLuaSprite('vignetteEnd', false)
doTweenAlpha("vignetteEndFade","vignetteEnd", 0, 0.1, true);
end

if not middlescroll then
makeAnimatedLuaSprite('BloodLeft', 'blooddrip', -100, 30);
addAnimationByPrefix('BloodLeft', 'idle', 'blood', 24, false);
addAnimationByPrefix('BloodLeft', 'stop', 'gone', 24, true);
objectPlayAnimation('BloodLeft', 'stop', false);
setObjectCamera('BloodLeft', 'hud')
scaleLuaSprite('BloodLeft', 1, 1);
addLuaSprite('BloodLeft', false);

makeAnimatedLuaSprite('BloodDown', 'blooddrip', 10, 30);
addAnimationByPrefix('BloodDown', 'idle', 'blood', 24, false);
addAnimationByPrefix('BloodDown', 'stop', 'gone', 24, true);
objectPlayAnimation('BloodDown', 'stop', false);
setObjectCamera('BloodDown', 'hud')
scaleLuaSprite('BloodDown', 1, 1);
addLuaSprite('BloodDown', false);

makeAnimatedLuaSprite('BloodUp', 'blooddrip', 130, 30);
addAnimationByPrefix('BloodUp', 'idle', 'blood', 24, false);
addAnimationByPrefix('BloodUp', 'stop', 'gone', 24, true);
objectPlayAnimation('BloodUp', 'stop', false);
setObjectCamera('BloodUp', 'hud')
scaleLuaSprite('BloodUp', 1, 1);
addLuaSprite('BloodUp', false);

makeAnimatedLuaSprite('BloodRight', 'blooddrip', 240, 30);
addAnimationByPrefix('BloodRight', 'idle', 'blood', 24, false);
addAnimationByPrefix('BloodRight', 'stop', 'gone', 24, true);
objectPlayAnimation('BloodRight', 'stop', false);
setObjectCamera('BloodRight', 'hud')
scaleLuaSprite('BloodRight', 1, 1);
addLuaSprite('BloodRight', false);
end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'Note of Markov (Play anim)' and not isSustainNote then
playSound('stab',0.6)
setProperty('vignetteEnd.alpha', 1)
doTweenAlpha("Fade2","vignetteEnd", 0, 0.5, true);
if direction == 0 then
objectPlayAnimation('BloodLeft', 'idle', false);
elseif direction == 1 then
objectPlayAnimation('BloodDown', 'idle', false);
elseif direction == 2 then
objectPlayAnimation('BloodUp', 'idle', false);
elseif direction == 3 then
objectPlayAnimation('BloodRight', 'idle', false);
end
end
end

local some=true
function onUpdate()
if some then
doTweenAlpha("camHUD","camHUD", 0, 0.01, true);
setProperty('healthBar.visible', false);
setProperty('healthBarBG.visible', false);
setProperty('iconP1.visible', false);
setProperty('iconP2.visible', false);
noteTweenAlpha("N0",0, 0, 0.01,"quartInOut");
noteTweenAlpha("N1",1, 0, 0.01,"quartInOut");
noteTweenAlpha("N2",2, 0, 0.01,"quartInOut");
noteTweenAlpha("N3",3, 0, 0.01,"quartInOut");
noteTweenAlpha("N4",4, 0, 0.01,"quartInOut");
noteTweenAlpha("N5",5, 0, 0.01,"quartInOut");
noteTweenAlpha("N6",6, 0, 0.01,"quartInOut");
noteTweenAlpha("N7",7, 0, 0.01,"quartInOut");
end
end

function onBeatHit()
if curBeat == 1 then
some=false
doTweenAlpha("camHUD","camHUD", 1, 1, true);
doTweenAlpha("DaVignetteFD","DaVignette", 0.3, 0.01, true);
setProperty('DaVignette.visible', true)
end
if curBeat == 32 then
noteTweenAlpha("N0",0, 0.5, 0.5,"quartInOut");
noteTweenAlpha("N1",1, 0.5, 0.5,"quartInOut");
noteTweenAlpha("N2",2, 0.5, 0.5,"quartInOut");
noteTweenAlpha("N3",3, 0.5, 0.5,"quartInOut");
end
if curBeat == 48 then
noteTweenAlpha("N4",4, 1, 0.5,"quartInOut");
noteTweenAlpha("N5",5, 1, 0.5,"quartInOut");
noteTweenAlpha("N6",6, 1, 0.5,"quartInOut");
noteTweenAlpha("N7",7, 1, 0.5,"quartInOut");
end
if curBeat == 97 then
doTweenAlpha("camHUD","camHUD", 0, 1, true);
end
if curBeat == 112 then
setProperty('DaVignette.visible', false)
triggerEvent('Change Character', 'bf', 'sadbf')
triggerEvent('Change Character', 'gf', 'gf-realdoki')
triggerEvent('Play Animation', 'necksnap', 'gf')
doTweenAlpha('camHUD','camHUD',1, 0.3,'linear')
setProperty('healthBar.visible', true);
setProperty('healthBarBG.visible', true);
setProperty('iconP1.visible', true);
setProperty('iconP2.visible', true);
setProperty('DaVignette2.visible', false)
noteTweenAlpha("N0",0, 1, 0.01,"quartInOut");
noteTweenAlpha("N1",1, 1, 0.01,"quartInOut");
noteTweenAlpha("N2",2, 1, 0.01,"quartInOut");
noteTweenAlpha("N3",3, 1, 0.01,"quartInOut");
end
if curBeat == 176 then
setProperty('defaultCamZoom',1)
end
if curBeat == 208 then
setProperty('defaultCamZoom',0.9)
end
if curBeat == 224 then
setProperty('defaultCamZoom',1)
end
if curBeat == 248 then
setProperty('DaVignette2.visible', true)
triggerEvent('Change Character', 'dad', 'yuri-closeup')
triggerEvent('Change Character', 'bf', 'bf-invisible')
triggerEvent('Change Character', 'gf', 'gf')
end
if curBeat == 312 then
setProperty('defaultCamZoom',1.1)
end
if curBeat == 344 then
setProperty('defaultCamZoom',1)
end
if curBeat == 376 then
cameraFlash('camGame', '000000', 1);
setProperty('DaVignette2.visible', false)
triggerEvent('Change Character', 'bf', 'sadbf')
triggerEvent('Change Character', 'gf', 'gf')
end
if curBeat == 408 then
cameraFlash('camHUD', 'FF0000', 0.5);
doTweenAlpha("EyessFade","Eyess", 1, 1, true);
setProperty('defaultCamZoom',1.2)
triggerEvent('Change Character', 'gf', 'gf-markov')
end
if curBeat == 440 then
doTweenAlpha("EyessFade","Eyess", 0, 1, true);
setProperty('defaultCamZoom',0.8)
end
if curBeat == 504 then
setProperty('defaultCamZoom',1.2)
end
if curBeat == 528 then
setProperty('defaultCamZoom',0.8)
end
if curBeat == 560 then
setProperty('defaultCamZoom',1)
end
if curBeat == 567 then
setProperty('DaVignette2.visible', true)
triggerEvent('Change Character', 'bf', 'bf-invisible')
triggerEvent('Change Character', 'gf', 'gf')
end
if curBeat == 704 then
objectPlayAnimation('BloodLeft', 'stop', true);
objectPlayAnimation('BloodDown', 'stop', true);
objectPlayAnimation('BloodUp', 'stop', true);
objectPlayAnimation('BloodRight', 'stop', true);
setProperty('Clouds1.visible', false)
setProperty('Clouds2.visible', false)
setProperty('WinLight.visible', false)
setPropertyFromGroup('opponentStrums', 0, 'x', 100000)
setPropertyFromGroup('opponentStrums', 1, 'x', 100000)
setPropertyFromGroup('opponentStrums', 2, 'x', 100000)
setPropertyFromGroup('opponentStrums', 3, 'x', 100000)
setPropertyFromGroup('opponentStrums', 4, 'x', 100000)
setProperty('DaVignette2.visible', false)
setProperty('healthBar.visible', false);
setProperty('healthBarBG.visible', false);
setProperty('iconP1.visible', false);
setProperty('iconP2.visible', false);
setProperty('ddtoScore.visible', false);
end
end

function onStepHit()
if curStep == 55 then
triggerEvent('Change Character', 'dad', 'yuri-closet')
triggerEvent('Play Animation', 'appear', 'dad')
end
if curStep == 416 then
setProperty('defaultCamZoom',1.3)
doTweenZoom('camz1','camGame', 1.3, 2,'linear')
setProperty('Transparent.visible', true)
doTweenAlpha('Transparentnn', 'Transparent', 1, 1.2, 'linear')
setProperty('dad.visible', false)
elseif curStep == 434 then
cancelTween('camz1')
setProperty('defaultCamZoom',1)
doTweenZoom('camz2','camGame', 1, 0.01,'linear')
setProperty('Transparent.visible', false)
setProperty('dad.visible', true)
elseif curStep == 448 then
setProperty('defaultCamZoom',0.75)
doTweenZoom('camz2','camGame', 0.75, 0.01,'linear')
setProperty('DarkCloset.visible', false)
elseif curStep == 962 then
setProperty('defaultCamZoom',1.3)
doTweenZoom('camz1','camGame', 1.3, 1.2,'linear')
setProperty('fade.visible', true)
doTweenAlpha('fadeInn', 'fade', 1, 1, 'linear')
elseif curStep == 992 then
cancelTween('camz1')
setProperty('defaultCamZoom',1)
doTweenZoom('camz2','camGame', 1, 0.01,'linear')
setProperty('fade.visible', false)
setProperty('DarkCloset.visible', true)
doTweenAlpha("DaVignetteFD","DaVignette", 0.3, 0.01, true);
setProperty('DaVignette.visible', true)
elseif curStep == 1504 then
setProperty('DarkCloset.visible', false)
doTweenAlpha("DaVignetteFD","DaVignette", 1, 0.01, true);
setProperty('DaVignette.visible', true)
setProperty('Transparent.visible', true)
elseif curStep == 1760 then
setProperty('Transparent.visible', false)
elseif curStep == 2268 then
doTweenAlpha("DaVignetteFD","DaVignette", 0.5, 0.01, true);
setProperty('DarkCloset.visible', true)
elseif curStep == 2816 then
noteTweenAlpha("N4",4, 0, 0.01,"quartInOut");
noteTweenAlpha("N5",5, 0, 0.01,"quartInOut");
noteTweenAlpha("N6",6, 0, 0.01,"quartInOut");
noteTweenAlpha("N7",7, 0, 0.01,"quartInOut");
makeLuaSprite('fade', 'doki/fadetransitionshit', 0, 0)
setObjectCamera('fade', 'hud')
scaleLuaSprite('fade', 3.0, 3.0)
addLuaSprite('fade', false)
setProperty('fade.visible', true)
elseif curStep == 2820 then
noteTweenAlpha("N4",4, 1, 0.5,"quartInOut");
noteTweenAlpha("N5",5, 1, 0.5,"quartInOut");
noteTweenAlpha("N6",6, 1, 0.5,"quartInOut");
noteTweenAlpha("N7",7, 1, 0.5,"quartInOut");
elseif curStep == 2832 then
doTweenAlpha("EyessFade","Eyess", 1, 0.1, true);
doTweenAlpha("vignetteEndFade","vignetteEnd", 1, 0.1, true);
setProperty('DaVignette.visible', false)
objectPlayAnimation('BgBlood', 'idle', false);
doTweenAlpha("BgBloodFade","BgBlood", 1, 0.1, true);
setProperty('fade.visible', false)
setProperty('DarkCloset.visible', false)
setProperty('SpaceClassroomOutside.visible', false)
setProperty('SpaceClassroomInside.visible', false)
elseif curStep == 2880 then
makeLuaSprite('fade', 'doki/fadetransitionshit', 0, 0)
setObjectCamera('fade', 'other')
scaleLuaSprite('fade', 3.0, 3.0)
addLuaSprite('fade', false)
setProperty('fade.visible', true)
end
end
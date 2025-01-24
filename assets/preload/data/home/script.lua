function onCreate()
makeLuaSprite('WindBG', 'doki/bgwindows', -625, -375);
scaleLuaSprite('WindBG', 1.5, 1.5);
setLuaSpriteScrollFactor('WindBG', 0.5, 0.5);
scaleObject('WindBG', 3, 3);
addLuaSprite('WindBG', false);
setProperty('WindBG.visible', false)
setProperty('WindBG.antialiasing', false)

makeLuaSprite('PoemMinigame', 'doki/notepad', 325, 255);
scaleLuaSprite('PoemMinigame', 1, 1);
setLuaSpriteScrollFactor('PoemMinigame', 1.0, 1.0);
addLuaSprite('PoemMinigame', false);
setProperty('PoemMinigame.visible', false)

makeLuaSprite('GlitchedBG', 'doki/BGlitch', -625, -375);
scaleLuaSprite('GlitchedBG', 1.5, 1.5);
setLuaSpriteScrollFactor('GlitchedBG', 1.0, 1.0);
scaleObject('GlitchedBG', 3, 3);
addLuaSprite('GlitchedBG', false);
setProperty('GlitchedBG.visible', false)

makeAnimatedLuaSprite('NekoBaka', 'doki/BakaBGDoodles', 50, 0)
addAnimationByPrefix('NekoBaka', 'idle', 'Normal Overlay0', 24, true)
objectPlayAnimation('NekoBaka', 'idle', false)
scaleLuaSprite('NekoBaka', 3.6, 3.6)
setLuaSpriteScrollFactor('NekoBaka', 0, 0)
setObjectCamera('NekoBaka', 'hud')
addLuaSprite('NekoBaka', true)
doTweenAlpha("NekoFade","NekoBaka", 0, 0.01, true);

makeAnimatedLuaSprite('GlitchTransparent', 'doki/HomeStatic', -10, 0)
addAnimationByPrefix('GlitchTransparent', 'dance', 'HomeStatic0', 24, true)
objectPlayAnimation('GlitchTransparent', 'dance', false)
scaleLuaSprite('GlitchTransparent', 2.8, 2.8)
setObjectCamera('GlitchTransparent', 'hud')
setLuaSpriteScrollFactor('GlitchTransparent', 0, 0)
addLuaSprite('GlitchTransparent', false)
setProperty('GlitchTransparent.alpha', 0.2)
setProperty('GlitchTransparent.visible', false)

makeAnimatedLuaSprite('GlitchedEnd', 'doki/HomeStatic', -10, 0)
addAnimationByPrefix('GlitchedEnd', 'dance', 'HomeStatic0', 24, true)
objectPlayAnimation('GlitchedEnd', 'dance', false)
scaleLuaSprite('GlitchedEnd', 2.8, 2.8)
setLuaSpriteScrollFactor('GlitchedEnd', 0, 0)
setObjectCamera('GlitchedEnd', 'other')
setProperty('GlitchedEnd.alpha', 1)
addLuaSprite('GlitchedEnd', true)
setProperty('GlitchedEnd.visible', false)

makeAnimatedLuaSprite('HappyThoughts', 'doki/PaperBG', 0, 0)
addAnimationByPrefix('HappyThoughts', 'idle', 'PaperBG0', 24, true)
objectPlayAnimation('HappyThoughts', 'idle', false)
scaleLuaSprite('HappyThoughts', 2.0, 2.0)
setLuaSpriteScrollFactor('HappyThoughts', 0, 0)
setObjectCamera('HappyThoughts', 'other')
setProperty('HappyThoughts.alpha', 2)
addLuaSprite('HappyThoughts', true)
setProperty('HappyThoughts.visible', false)

makeLuaSprite('fade', 'doki/fadetransitionshit', 0, 0)
setObjectCamera('fade', 'hud')
scaleLuaSprite('fade', 2.0, 2.0)
addLuaSprite('fade', false)
doTweenAlpha("fadeFade","fade", 0, 0.01, true);

makeLuaSprite('DaVignette', 'doki/vignette', -260, -100)
scaleLuaSprite('DaVignette', 1.5, 1.5)
setObjectCamera('DaVignette', 'hud')
setLuaSpriteScrollFactor('DaVignette', 1.0, 1.0)
addLuaSprite('DaVignette', false)
doTweenAlpha("DaVignetteFade","DaVignette", 0, 0.01, true);

makeLuaSprite('deadlight', 'doki/deadlight', 0, 0)
scaleLuaSprite('deadlight', 2, 2)
setObjectCamera('deadlight', 'hud')
addLuaSprite('deadlight', false)
doTweenAlpha("deadlightFade","deadlight", 0, 0.01, true);

makeAnimatedLuaSprite('NekoBakaRuined', 'doki/BakaBGDoodles', 20, -20)
addAnimationByPrefix('NekoBakaRuined', 'dance', 'HOME Overlay0', 24, false)
objectPlayAnimation('NekoBakaRuined', 'dance', false)
scaleLuaSprite('NekoBakaRuined', 3.6, 3.6)
setLuaSpriteScrollFactor('NekoBakaRuined', 0, 0)
setObjectCamera('NekoBakaRuined', 'other')
setProperty('NekoBakaRuined.alpha', 3)
addLuaSprite('NekoBakaRuined', true)
setProperty('NekoBakaRuined.visible', false)

makeAnimatedLuaSprite('GlitchedEnd1', 'doki/HomeStatic', -10, 0)
addAnimationByPrefix('GlitchedEnd1', 'dance', 'HomeStatic0', 24, true)
objectPlayAnimation('GlitchedEnd1', 'dance', false)
scaleLuaSprite('GlitchedEnd1', 2.8, 2.8)
setLuaSpriteScrollFactor('GlitchedEnd1', 0, 0)
setObjectCamera('GlitchedEnd1', 'hud')
addLuaSprite('GlitchedEnd1', false)
doTweenAlpha("GlitchedEnd1Fade","GlitchedEnd1", 0, 0.01, true);

makeAnimatedLuaSprite('GlitchedEnd2', 'doki/HomeStatic', -300, -150)
addAnimationByPrefix('GlitchedEnd2', 'idle', 'HomeStatic0', 24, true)
objectPlayAnimation('GlitchedEnd2', 'idle', false)
scaleLuaSprite('GlitchedEnd2', 4, 4)
setProperty('GlitchedEnd2.antialiasing', false)
setLuaSpriteScrollFactor('GlitchedEnd2', 0, 0)
setObjectOrder('GlitchedEnd2', 2)
addLuaSprite('GlitchedEnd2', false)
doTweenAlpha("GlitchedEnd2Fade","GlitchedEnd2", 0, 0.01, true);

makeAnimatedLuaSprite('GlitchedEnd3', 'doki/HomeStatic', -10, 0)
addAnimationByPrefix('GlitchedEnd3', 'dance', 'HomeStatic0', 24, true)
objectPlayAnimation('GlitchedEnd3', 'dance', false)
scaleLuaSprite('GlitchedEnd3', 2.8, 2.8)
setObjectCamera('GlitchedEnd3', 'hud')
setLuaSpriteScrollFactor('GlitchedEnd3', 0, 0)
addLuaSprite('GlitchedEnd3', false)
doTweenAlpha("GlitchedEnd3Fade","GlitchedEnd3", 0, 0.01, true);

makeAnimatedLuaSprite('GlitchedEnd4', 'doki/HomeStatic', -10, 0)
addAnimationByPrefix('GlitchedEnd4', 'dance', 'HomeStatic0', 24, true)
objectPlayAnimation('GlitchedEnd4', 'dance', false)
scaleLuaSprite('GlitchedEnd4', 2.8, 2.8)
setObjectCamera('GlitchedEnd4', 'hud')
setLuaSpriteScrollFactor('GlitchedEnd4', 0, 0)
addLuaSprite('GlitchedEnd4', false)
doTweenAlpha("GlitchedEnd4Fade","GlitchedEnd4", 0, 0.01, true);

doTweenAlpha("dadFade","dad", 0, 0.01, true);
doTweenAlpha("bfFade","boyfriend", 0, 0.01, true);
doTweenAlpha("gfFade","gf", 0, 0.01, true);
end

local some=true
local foccam=false
function onUpdate()
if foccam then
setProperty('cameraSpeed', 1000); 
triggerEvent('Camera Follow Pos','970','600')
end
if some then
doTweenAlpha("camHUD","camHUD", 0, 0.01, true);
setProperty('healthBar.visible', false);
setProperty('healthBarBG.visible', false);
setProperty('iconP1.visible', false);
setProperty('iconP2.visible', false);
setProperty('ddtoScore.visible', false);
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

function onStartCountdown()
setProperty('SilYuri.visible', true);
setProperty('SilSayori.visible', true);

setObjectOrder('gf', 10);

runTimer('FadeOpening', 0.5);
end

function onSongStart()
setProperty('ddtoScore.visible', false);
onColorAllBlack()
end

function onBeatHit()
if curBeat == 2 then
some=false
doTweenAlpha("camHUD","camHUD", 1, 1, true);
end
if curBeat == 30 then
noteTweenAlpha("N0",0, 1, 0.5,"quartInOut");
noteTweenAlpha("N1",1, 1, 0.5,"quartInOut");
noteTweenAlpha("N2",2, 1, 0.5,"quartInOut");
noteTweenAlpha("N3",3, 1, 0.5,"quartInOut");
end
if curBeat == 38 then
noteTweenAlpha("N4",4, 1, 0.5,"quartInOut");
noteTweenAlpha("N5",5, 1, 0.5,"quartInOut");
noteTweenAlpha("N6",6, 1, 0.5,"quartInOut");
noteTweenAlpha("N7",7, 1, 0.5,"quartInOut");
end
if curBeat == 96 then
setProperty('defaultCamZoom',1.2)
doTweenZoom('camz2','camGame', 1.2, 6,'linear')
end
if curBeat == 124 then
setProperty('defaultCamZoom',0.75)
doTweenZoom('camz2','camGame', 0.75, 0.01,'linear')
setProperty('healthBar.visible', true);
setProperty('healthBarBG.visible', true);
setProperty('iconP1.visible', true);
setProperty('iconP2.visible', true);
setProperty('ddtoScore.visible', true);
end
if curBeat == 188 then
setProperty('defaultCamZoom',1.5)
end
if curBeat == 192 then
playSound('EyeSplode',0.6)
end
if curBeat == 324 then
cameraFlash('camGame', '000000', 1);
end
if curBeat == 588 then
onColorAllWhite()
setProperty('defaultCamZoom',0.75)
doTweenZoom('camz2','camGame', 0.75, 0.01,'linear')
noteTweenAlpha('G',0,0,2.1,'Linear')
noteTweenAlpha('H',1,0,2.1,'Linear')
noteTweenAlpha('B',2,0,2.2,'Linear')
noteTweenAlpha('D',3,0,2.3, 'linear')
setProperty('healthBar.visible', false);
setProperty('healthBarBG.visible', false);
setProperty('iconP1.visible', false);
setProperty('iconP2.visible', false);
setProperty('ddtoScore.visible', false);
end
if curBeat == 716 then
onColorAllNormal()
onColorAllRed()
end
end

function onStepHit()
if curStep == 128 then
doTweenAlpha("dadFade","dad", 1, 1, true);

elseif curStep == 160 then
doTweenAlpha("bfFade","boyfriend", 1, 1, true);

elseif curStep == 256 then
doTweenAlpha("gfFade","gf", 1, 1, true);
doTweenAlpha("NekoFade","NekoBaka", 1, 1, true);

elseif curStep == 448 then
setProperty('NekoBakaRuined.visible', true)
objectPlayAnimation('NekoBakaRuined', 'dance', true)
setProperty('GlitchedEnd.visible', true)
setProperty('HappyThoughts.visible', true)
removeLuaSprite('NekoBaka')
runTimer('Disappear', 2)

elseif curStep == 496 then
onColorAllNormal()
doTweenAlpha("DaVignetteFade","DaVignette", 0.5, 0.01, true);
setProperty('HappyThoughts.visible', false)

removeLuaSprite('Memories')
removeLuaSprite('GlitchedEnd')

setProperty('Clouds1.visible', true)
setProperty('Clouds2.visible', true)
setProperty('WinLight.visible', true)
elseif curStep == 784 then
setProperty('GlitchTransparent.visible', true)
setProperty('dad.x', 570)
setProperty('cameraSpeed', 3); 
elseif curStep == 1296 then
setProperty('cameraSpeed', 3); 
setProperty('dad.x', 100)
setProperty('GlitchTransparent.visible', false)
doTweenAlpha("fadeFade","fade", 1, 0.01, true);
doTweenAlpha("DaVignetteFade","DaVignette", 1, 0.01, true);

elseif curStep == 1304 then
doTweenAlpha('Fadet', 'fade', 0, 0.5, 'linear')

elseif curStep == 1552 then
setProperty('dad.x', 325)
setProperty('boyfriend.x', 575)
doTweenAlpha("DaVignetteFade","DaVignette", 0.5, 0.01, true);
setProperty('GlitchTransparent.visible', true)

elseif curStep == 1792 then
doTweenAlpha("GlitchedEnd1Fade","GlitchedEnd1", 1, 1, true);

elseif curStep == 1808 then
setProperty('defaultCamZoom',1)
doTweenZoom('camz2','camGame', 1, 0.01,'linear')
setProperty('dad.x', 200)
setProperty('boyfriend.x', 670)

removeLuaSprite('SpaceClassroomOutside')
removeLuaSprite('SpaceClassroomInside')
removeLuaSprite('GlitchedEnd1')
removeLuaSprite('Clouds1')
removeLuaSprite('Clouds2')
removeLuaSprite('WinLight')
removeLuaSprite('GlitchTransparent')

doTweenAlpha("GlitchedEnd2Fade","GlitchedEnd2", 1, 0.001, true);
setProperty('SpaceClassroomInside.visible', false)
setProperty('SpaceClassroomOutside.visible', false)
setProperty('PoemMinigame.visible', false)
setProperty('WindBG.visible', true)
setProperty('GlitchedBG.visible', true)
setProperty('GlitchedBGBack.visible', true)
setProperty('GlitchedBGFront.visible', true)
elseif curStep == 2048 then
doTweenAlpha("GlitchedEnd3Fade","GlitchedEnd3", 1, 1, true);

elseif curStep == 2064 then
foccam=true
removeLuaSprite('GlitchedEnd3')
setProperty('defaultCamZoom',1)
doTweenZoom('camz2','camGame', 1, 0.01,'linear')
setProperty('PoemMinigame.visible', true)
setProperty('dad.visible', false)
setProperty('gf.visible', false)
setProperty('GlitchedBG.visible', false)
setProperty('GlitchedBGBack.visible', false)
setProperty('GlitchedBGFront.visible', false)
setProperty('healthBar.visible', false);
setProperty('healthBarBG.visible', false);
setProperty('iconP1.visible', false);
setProperty('iconP2.visible', false);
setProperty('ddtoScore.visible', false);
elseif curStep == 2176 then
doTweenAlpha("GlitchedEnd4Fade","GlitchedEnd4", 1, 1, true);

elseif curStep == 2192 then
foccam=false
cameraSetTarget('dad')
setProperty('defaultCamZoom',0.85)
doTweenZoom('camz2','camGame', 0.85, 0.01,'linear')

removeLuaSprite('GlitchedEnd4')
removeLuaSprite('PoemMinigame')
removeLuaSprite('HappyThoughts')

setProperty('dad.visible', true)
setProperty('gf.visible', true)
setProperty('GlitchedBG.visible', true)
setProperty('GlitchedBGBack.visible', true)
setProperty('GlitchedBGFront.visible', true)
setProperty('healthBar.visible', true);
setProperty('healthBarBG.visible', true);
setProperty('iconP1.visible', true);
setProperty('iconP2.visible', true);
setProperty('ddtoScore.visible', true);

elseif curStep == 2236 then
cameraSetTarget('boyfriend')

elseif curStep == 2270 then
cameraSetTarget('dad')

elseif curStep == 2300 then
cameraSetTarget('boyfriend')

elseif curStep == 2336 then
makeLuaSprite('cover1', 'doki/VoidCover', -300, 60)
scaleLuaSprite('cover1', 1.0, 1.0)
setObjectOrder('cover1', 2)
setLuaSpriteScrollFactor('cover1', 1.0, 1.0)
addLuaSprite('cover1', false)

makeLuaSprite('cover2', 'doki/VoidCover', 700, 60)
scaleLuaSprite('cover2', 1.0, 1.0)
setObjectOrder('cover2', 2)
setLuaSpriteScrollFactor('cover2', 1.0, 1.0)
addLuaSprite('cover2', false)

noteTweenAlpha("N0",0, 0, 0.01,"quartInOut");
noteTweenAlpha("N1",1, 0, 0.01,"quartInOut");
noteTweenAlpha("N2",2, 0, 0.01,"quartInOut");
noteTweenAlpha("N3",3, 0, 0.01,"quartInOut");
noteTweenAlpha("N4",4, 0, 0.01,"quartInOut");
noteTweenAlpha("N5",5, 0, 0.01,"quartInOut");
noteTweenAlpha("N6",6, 0, 0.01,"quartInOut");
noteTweenAlpha("N7",7, 0, 0.01,"quartInOut");
doTweenAlpha("dadFade","dad", 0, 1, true);
doTweenAlpha("bfFade","boyfriend", 0, 1, true);
doTweenAlpha("gfFade","gf", 0, 1, true);
setProperty('dad.visible', false)
setProperty('boyfriend.visible', false)
setProperty('gf.visible', false)

removeLuaSprite('GlitchedEnd2')
removeLuaSprite('WindBG')
removeLuaSprite('GlitchedBG')
removeLuaSprite('GlitchedBGBack')
removeLuaSprite('GlitchedBGFront')

elseif curStep == 2352 then
doTweenAlpha("dadFade","dad", 1, 1, true);
setProperty('dad.visible', true)

elseif curStep == 2362 then
noteTweenAlpha("N4",4, 1, 0.5,"quartInOut");
noteTweenAlpha("N5",5, 1, 0.5,"quartInOut");
noteTweenAlpha("N6",6, 1, 0.5,"quartInOut");
noteTweenAlpha("N7",7, 1, 0.5,"quartInOut");

elseif curStep == 2368 then
doTweenAlpha("bfFade","boyfriend", 1, 1, true);
setProperty('boyfriend.visible', true)

elseif curStep == 2384 then
doTweenAlpha("gfFade","gf", 0.7, 1, true);
setProperty('gf.visible', true)

elseif curStep == 2416 then
doTweenAlpha('Cov1t', 'cover1', 0, 0.5, 'linear')

elseif curStep == 2608 then
doTweenAlpha('deadlightFD', 'deadlight', 1, 20, 'linear')
doTweenAlpha('Cov2t', 'cover2', 0, 0.5, 'linear')

elseif curStep == 2928 then
makeLuaSprite('fade', 'doki/fadetransitionshit', 0, 0)
scaleLuaSprite('fade', 2.0, 2.0)
setLuaSpriteScrollFactor('fade', 0, 0)
setObjectCamera('fade', 'other')
setProperty('fade.alpha', 1)
addLuaSprite('fade', true)

makeAnimatedLuaSprite('GlitchedEnd5', 'doki/HomeStatic', 0, 0)
addAnimationByPrefix('GlitchedEnd5', 'dance', 'HomeStatic0', 24, true)
objectPlayAnimation('GlitchedEnd5', 'dance', false)
scaleLuaSprite('GlitchedEnd5', 2.8, 2.8)
setLuaSpriteScrollFactor('GlitchedEnd5', 0, 0)
setObjectCamera('GlitchedEnd5', 'other')
setProperty('GlitchedEnd5.alpha', 2)
addLuaSprite('GlitchedEnd5', true)

makeLuaSprite('ifuckinghatebadendings', 'doki/everyoneisdead', 0, 0)
scaleLuaSprite('ifuckinghatebadendings', 1.0, 1.0)
setLuaSpriteScrollFactor('ifuckinghatebadendings', 0, 0)
setObjectCamera('ifuckinghatebadendings', 'other')
setProperty('ifuckinghatebadendings.alpha', 3)
addLuaSprite('ifuckinghatebadendings', true)

runTimer('TheEnd', 9)
end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'Disappear' then
removeLuaSprite('NekoBaka')
doTweenAlpha('Happyt', 'HappyThoughts', 0, 1, 'linear')
elseif tag == 'TheEnd' then
doTweenAlpha('Glitcht', 'GlitchedEnd5', 0, 5, 'linear')
doTweenAlpha('Badt', 'ifuckinghatebadendings', 0, 5, 'linear')
setProperty('dad.visible', false)
setProperty('boyfriend.visible', false)
addLuaSprite('GlitchedEnd5', true)
addLuaSprite('ifuckinghatebadendings', true)
setProperty('GlitchedEnd5.visible', true)
setProperty('ifuckinghatebadendings.visible', true)
setProperty('gf.visible', false)
setProperty('SilYuri.visible', false)
setProperty('SilSayori.visible', false)
end
end

function onColorAllBlack() setProperty('dad.colorTransform.greenOffset', -255)
setProperty('dad.colorTransform.redOffset', -255) setProperty('dad.colorTransform.blueOffset', -255)
setProperty('boyfriend.colorTransform.greenOffset', -255) setProperty('boyfriend.colorTransform.redOffset', -255)
setProperty('boyfriend.colorTransform.blueOffset', -255) setProperty('gf.colorTransform.greenOffset', -255)
setProperty('gf.colorTransform.redOffset', -255) setProperty('gf.colorTransform.blueOffset', -255)
end function onColorAllWhite() setProperty('dad.colorTransform.greenOffset', 255)
setProperty('dad.colorTransform.redOffset', 255) setProperty('dad.colorTransform.blueOffset', 255)
setProperty('boyfriend.colorTransform.greenOffset', 255) setProperty('boyfriend.colorTransform.redOffset', 255)
setProperty('boyfriend.colorTransform.blueOffset', 255) setProperty('gf.colorTransform.greenOffset', 255)
setProperty('gf.colorTransform.redOffset', 255) setProperty('gf.colorTransform.blueOffset', 255)
end function onColorAllRed() doTweenColor('dadCol', 'dad', 'FF0000', 0.01, 'linear') setProperty('gf.alpha', 0.5) 
setProperty('gf.colorTransform.redOffset', 255) setProperty('gf.colorTransform.greenOffset', -255) setProperty('deadlight.visible', false)
setProperty('gf.colorTransform.blueOffset', -255) setProperty('boyfriend.colorTransform.redOffset', 255) 
setProperty('boyfriend.colorTransform.greenOffset', -255) setProperty('boyfriend.colorTransform.blueOffset', -255) 
doTweenColor('sayoCol', 'sayori', '990000', 0.01, 'linear') doTweenColor('yuriCol', 'Yuri', '990000', 0.01, 'linear')
end function onColorAllNormal() setProperty('dad.colorTransform.greenOffset', 0)
setProperty('dad.colorTransform.redOffset', 0) setProperty('dad.colorTransform.blueOffset', 0)
setProperty('boyfriend.colorTransform.greenOffset', 0) setProperty('boyfriend.colorTransform.redOffset', 0)
setProperty('boyfriend.colorTransform.blueOffset', 0) setProperty('gf.colorTransform.greenOffset', 0)
setProperty('gf.colorTransform.redOffset', 0) setProperty('gf.colorTransform.blueOffset', 0)
end
function onCreate()

makeAnimatedLuaSprite('DDLCTB', 'poemUI/timeBar-poem', -15, -15);
addAnimationByPrefix('DDLCTB', 'idle', 'timeBar', 24, true);
scaleObject('DDLCTB', 0.9, 0.9)
objectPlayAnimation('DDLCTB', 'idle', true)
setObjectCamera('DDLCTB', 'hud');
setProperty('DDLCTB.visible', false);

makeAnimatedLuaSprite('DDLCHB', 'poemUI/healthBar-poem', 0, 0);
addAnimationByPrefix('DDLCHB', 'idle', 'healthBar', 24, true);
scaleObject('DDLCHB', 0.9, 0.9)
objectPlayAnimation('DDLCHB', 'idle', true)
setObjectCamera('DDLCHB', 'hud');
setProperty('DDLCHB.visible', false);

addLuaSprite('DDLCTB', false);
addLuaSprite('DDLCHB', false);
end

function onCreatePost()
setProperty('DDLCTB.x', getProperty('timeBar.x') + 10)
setProperty('DDLCTB.angle', getProperty('timeBar.angle'))
setProperty('DDLCTB.y', getProperty('timeBar.y') - 15)
setProperty('DDLCTB.scale.x', getProperty('timeBar.scale.x'))
setProperty('DDLCTB.scale.y', getProperty('timeBar.scale.y'))

setProperty('DDLCHB.alpha',getPropertyFromClass('ClientPrefs', 'healthBarAlpha'))
setProperty('DDLCHB.x', getProperty('healthBar.x') +20)
setProperty('DDLCHB.angle', getProperty('healthBar.angle'))
setProperty('DDLCHB.y', getProperty('healthBar.y') - 20)
setProperty('DDLCHB.scale.x', getProperty('healthBar.scale.x'))
setProperty('DDLCHB.scale.y', getProperty('healthBar.scale.y'))

setObjectOrder('DDLCHB', 18)
setObjectOrder('healthBar', 19)
setObjectOrder('healthBarBG', 17)
setObjectOrder('DDLCTB', 1)
setObjectOrder('timeBar', 3)
setObjectOrder('timeBarBG', 2)
end

function onBeatHit()
if curBeat == 200 then
setProperty('defaultCamZoom',1)
doTweenZoom('camz1','camGame', 1, 0.001,'linear')
end
if curBeat == 264 then
setProperty('defaultCamZoom',0.8)
doTweenZoom('camz1','camGame', 0.8, 0.001,'linear')
end
if curBeat == 328 then
setProperty('DDLCTB.visible', true);
setTextFont('ddtoScore','poem.ttf')
setTextFont('judgementCounterTxt', 'poem.ttf')
setTextFont('ddtoTimeText','poem.ttf')
for i=0,4,1 do
setPropertyFromGroup('opponentStrums', i, 'texture', 'poemUI/NOTE_assets');
setPropertyFromGroup('playerStrums', i, 'texture', 'poemUI/NOTE_assets');
end
end
if curBeat == 424 then
setProperty('defaultCamZoom',0.9)
end
if curBeat == 440 then
setProperty('defaultCamZoom',1)
end
if curBeat == 456 then
setProperty('defaultCamZoom',0.8)
doTweenZoom('camz1','camGame', 0.8, 0.001,'linear')

setTextFont('ddtoScore','Aller_rg.ttf')
setTextFont('judgementCounterTxt', 'Aller_rg.ttf')
setTextFont('ddtoTimeText','Aller_rg.ttf')
setProperty('DDLCTB.visible', false);
for i=0,4,1 do
setPropertyFromGroup('opponentStrums', i, 'texture', 'noteSkins/NOTE_assets');
setPropertyFromGroup('playerStrums', i, 'texture', 'noteSkins/NOTE_assets');
end
end
if curBeat == 520 then
setProperty('defaultCamZoom',0.9)
end
if curBeat == 536 then
setProperty('defaultCamZoom',0.95)
end
if curBeat == 552 then
setProperty('defaultCamZoom',1)
end
if curBeat == 568 then
setProperty('defaultCamZoom',0.8)
doTweenZoom('camz1','camGame', 0.8, 0.001,'linear')
end
if curBeat == 584 then
setProperty('defaultCamZoom',1)
setTextFont('ddtoScore','poem.ttf')
setTextFont('judgementCounterTxt', 'poem.ttf')
setTextFont('ddtoTimeText','poem.ttf')
setProperty('DDLCTB.visible', true);
for i=0,4,1 do
setPropertyFromGroup('opponentStrums', i, 'texture', 'poemUI/NOTE_assets');
setPropertyFromGroup('playerStrums', i, 'texture', 'poemUI/NOTE_assets');
end
end
if curBeat == 648 then
setProperty('defaultCamZoom',0.8)
end
end

function onStepHit()
if curStep == 1312 or curStep == 2336 then
setProperty('DDLCHB.visible', true)
elseif curStep == 1824 then
setProperty('DDLCHB.visible', false)
end
end
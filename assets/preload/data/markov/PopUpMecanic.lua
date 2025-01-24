function onCreatePost()
Popups()
end

PopupCount = 0;
PopLimit = 20;

function Popups()
for i = 0, PopLimit do
tag = ('Popup'..i);
makeAnimatedLuaSprite(tag, 'doki/MarkovEyes', 90000, 0)
scaleObject(tag, 2.0, 2.0);
setObjectCamera(tag, 'other')
addLuaSprite(tag, true);
end
end

function onEvent(name,value1,value2)
if name == 'Eye Popup' then 
setProperty(tag..'.x', value1)
setProperty(tag..'.y', value2)
addAnimationByPrefix(tag, 'idle1', 'MarkovWindow0', 24, false);
objectPlayAnimation(tag, 'idle1', true)
PopupCount = PopupCount + 1;
tag = ('Popup'..PopupCount);
end
end

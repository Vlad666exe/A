function onEvent(n,v1,v2)


	if n == 'Flash Camera Red' then

	   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',screenWidth,screenHeight,'ff0000')
	      addLuaSprite('flash', true);
	      setLuaSpriteScrollFactor('flash',0,0)
	      setObjectCamera('flash', 'camhud')
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',0.1)
		doTweenAlpha('flTw','flash',0,v1,'linear')
	end



end
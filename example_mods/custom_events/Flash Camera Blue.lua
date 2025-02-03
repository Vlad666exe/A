function onEvent(n,v1,v2)


	if n == 'Flash Camera Blue' then

	   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',screenWidth,screenHeight,'0000ff')
        setObjectCamera('flash', 'camhud')
	      addLuaSprite('flash', true);
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,v1,'linear')
	end



end
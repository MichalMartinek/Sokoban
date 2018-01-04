initialization
keyListener: aListener
	self removeKeyListener.
	window root addEventHandler: aListener.
	keyLstnr := aListener
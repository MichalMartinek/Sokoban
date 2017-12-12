as yet unclassified
openWindow
	| space game |
	space := BlSpace new
		extent: 300 @ 300;
		show.
	game := SKBGameElement new.
	space root addChild: game.
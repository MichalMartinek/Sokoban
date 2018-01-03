as yet unclassified
withWindow
	| space game |
	space := BlSpace new
		title: 'Sokoban';
		extent: 900 @ 600;
		show.
	game := SKBGameElement new.
	game window: space.
	^ game
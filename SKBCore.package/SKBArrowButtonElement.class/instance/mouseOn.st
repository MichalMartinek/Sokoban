as yet unclassified
mouseOn
	disabled ifFalse: [ BlOpacityAnimation new
		opacity: 0.7;
		duration: 0.5 seconds;
		target: self;
		start ]
	
as yet unclassified
mouseOut
	disabled
		ifFalse: [ 
	BlOpacityAnimation new
		opacity: 1;
		duration: 0.5 seconds;
		target: self;
		start]
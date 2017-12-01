accessing
left
	^ leftDirection ifNil: [ leftDirection := SKBDirection withVector: -1@0 ].
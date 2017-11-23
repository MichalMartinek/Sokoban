visual properties
drawVerticalLinesOn: aCanvas yCord:  yCord

| offsetX start lineSpacing |

	lineSpacing := 80 /5.
	offsetX := (yCord / lineSpacing ) % 2.
	
	
	offsetX = 0
		ifTrue:[ start := 10 ]
		ifFalse:[ start := 0 ].

start to: 80 by: lineSpacing  do:
[ :offset | 
	aCanvas stroke
	path: (aCanvas shape line: offset @ yCord to: offset @ (yCord + lineSpacing  ) );
	paint: Color lightGray;
	draw.
]
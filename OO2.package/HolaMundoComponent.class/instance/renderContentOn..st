rendering
renderContentOn: aWAHTMLCanvas
	aWAHTMLCanvas paragraph
		with: [ aWAHTMLCanvas text: 'El número que estás pensando es...'.
			aWAHTMLCanvas space.
			aWAHTMLCanvas strong: number printString ].
	aWAHTMLCanvas anchor
		callback: [ self guessAgain ];
		with: 'Nootus nootus'
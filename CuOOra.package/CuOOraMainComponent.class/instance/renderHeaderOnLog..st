as yet unclassified
renderHeaderOnLog: aCanvas
	aCanvas div
		style: 'display:flex; justify-content:space-between; align-items:center';
		with: [ aCanvas heading: 'CuOOra'.
			aCanvas anchor
				callback: [ self answer ];
				with: [ aCanvas button: 'Atrás' ] ].
	aCanvas horizontalRule
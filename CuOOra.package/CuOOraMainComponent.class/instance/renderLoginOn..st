rendering
renderLoginOn: aCanvas
	aCanvas div
		style: 'display:flex; justify-content:space-between; align-items:center';
		with: [ aCanvas heading: 'CuOOra'.
			aCanvas
				div: [ aCanvas anchor
						callback: [ self login ];
						with: [ aCanvas button with: 'Login'] ] ].
	aCanvas horizontalRule
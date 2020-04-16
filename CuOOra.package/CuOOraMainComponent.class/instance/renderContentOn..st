rendering
renderContentOn: aCanvas
	aCanvas div
		style: 'display:flex; justify-content:space-between; align-items:center';
		with: [ aCanvas heading: 'CuOOra'.
			aCanvas
				div: [ aCanvas strong: 'nombre de usuario'.
					aCanvas space.
					aCanvas space.
					aCanvas anchor
						callback: [  ];
						with: 'Login' ] ].
	aCanvas horizontalRule.
	aCanvas heading
		level: 2;
		with: 'Últimas Preguntas'.
	aCanvas orderedList
		style: 'list-style-type:none';
		with: [ aCanvas
				listItem: [ self questionRender: aCanvas.
					aCanvas horizontalRule ].
			aCanvas listItem: [ self questionRender: aCanvas.
					aCanvas horizontalRule ].
			aCanvas listItem: [ self questionRender: aCanvas.
					aCanvas horizontalRule ].
			aCanvas listItem: [ self questionRender: aCanvas.
					aCanvas horizontalRule ].
			aCanvas listItem: [ self questionRender: aCanvas ] ]
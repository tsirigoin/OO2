rendering
renderLogedInOn: aCanvas
	aCanvas div
		style: 'display:flex; justify-content:space-between; align-items:center';
		with: [ aCanvas heading: 'CuOOra'.
			aCanvas
				div: [ aCanvas
						strong: [ aCanvas anchor
								callback: [  ];
								with: loggedUser username ] ].
			aCanvas button
				callback: [  ];
				with: 'Cerrar Sesión' ].
	aCanvas horizontalRule.
	aCanvas div
		with: [ aCanvas button
				style: 'float: right';
				callback: [  ];
				with: 'Añadir pregunta' ].
	aCanvas heading
		level: 2;
		with: 'Últimas Preguntas'.
	self renderQuestionsOn: aCanvas
rendering
renderLogedInOn: aCanvas
	self renderHeaderOn: aCanvas.
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
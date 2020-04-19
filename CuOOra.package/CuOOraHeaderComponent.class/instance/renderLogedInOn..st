rendering
renderLogedInOn: aCanvas
	aCanvas div
		with: [ aCanvas button
				style: 'float: right';
				callback: [ self nuevaPregunta ];
				with: 'Añadir pregunta' ].
	aCanvas heading
		level: 2;
		with: 'Últimas Preguntas'.
	self renderQuestionsOn: aCanvas
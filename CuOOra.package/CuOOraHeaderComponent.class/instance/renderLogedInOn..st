rendering
renderLogedInOn: aCanvas
	aCanvas div
		with: [ aCanvas anchor 
				callback: [ self nuevaPregunta ];
				with: [aCanvas button
				style: 'float: right'; with: 'Añadir pregunta'] ].
	aCanvas heading
		level: 2;
		with: 'Últimas Preguntas'.
	self renderQuestionsOn: aCanvas
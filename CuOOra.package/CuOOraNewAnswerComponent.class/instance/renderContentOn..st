rendering
renderContentOn: aCanvas
	self renderHeaderOn: aCanvas.
	self renderQuestionOn: aCanvas.
	aCanvas horizontalRule.
	aCanvas label: 'Ingrese su respuesta debajo'.
	aCanvas form: [ aCanvas textArea on: #newAnswerText of: self ].
	aCanvas anchor
		callback: [ self responder ];
		with: [ aCanvas button: 'Responder' ].
	aCanvas anchor
		callback: [ self answer ];
		with: [aCanvas button: 'Cancelar']
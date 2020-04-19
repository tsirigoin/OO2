rendering
renderContentOn: aCanvas
	self renderHeaderOn: aCanvas.
	self renderQuestionOn: aCanvas.
	aCanvas horizontalRule.
	aCanvas label: 'Ingrese su respuesta debajo'.
	aCanvas
		form: [ aCanvas textArea callback: [ :value | self newAnswerText: value ].
			aCanvas anchor callback: [ self responder ]; with: [aCanvas submitButton: 'Responder' ].
			aCanvas anchor callback: [ self responder ]; with: [aCanvas cancelButton: 'Cancelar' ] ]
rendering
renderContentOn: aCanvas
	self renderHeaderOn: aCanvas.
	self renderQuestionOn: aCanvas.
	aCanvas horizontalRule.
	aCanvas
		form: [ aCanvas label: 'Respuesta: '.
			aCanvas paragraph: [ aCanvas textArea
						rows: 10;
						columns: 84; on: #newAnswerText of: self ].
			aCanvas submitButton
				callback: [ self responder ];
				with: 'Responder'.
			aCanvas space.
			aCanvas cancelButton
				callback: [ self answer ];
				with: 'Cancelar' ]
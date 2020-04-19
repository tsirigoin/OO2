rendering
renderContentOn: aCanvas
	self renderHeaderOn: aCanvas.
	aCanvas heading
		level: 2;
		with: 'Nueva pregunta'.
	aCanvas
		form: [ aCanvas label: 'Título '.
			aCanvas paragraph: [ aCanvas textInput on: #newTitle of: self ].
			aCanvas label: 'Desarrollo '.
			aCanvas paragraph: [ aCanvas textArea on: #newTextbox of: self ].
			aCanvas label: 'Tópicos '.
			aCanvas paragraph: [ aCanvas textInput on: #newTopics of: self ].
			aCanvas submitButton
				callback: [ self preguntar ];
				with: 'Responder'.
			aCanvas space.
			aCanvas cancelButton
				callback: [ self answer ];
				with: 'Cancelar' ]
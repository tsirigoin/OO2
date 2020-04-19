rendering
renderContentOn: aCanvas
	self renderHeaderOn: aCanvas.
	aCanvas heading
		level: 2;
		with: 'Nueva pregunta'.
	aCanvas
		form: [ aCanvas
				label: 'Título: ';
				break.
			aCanvas textInput on: #newTitle of: self.
			aCanvas
				break;
				label: 'Desarrollo';
				break.
			aCanvas textArea on: #newTextbox of: self.
			aCanvas
				break;
				label: 'Tópicos';
				break.
			aCanvas textInput on: #newTopics of: self ];
		break.
	aCanvas anchor
		callback: [ self answer ];
		with: [ aCanvas button with: 'Cancelar' ].
	aCanvas space.
	aCanvas anchor
		callback: [
			self preguntar ];
		with: [ aCanvas button with: 'Enviar' ]
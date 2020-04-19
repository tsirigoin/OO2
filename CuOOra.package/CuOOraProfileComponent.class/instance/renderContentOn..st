rendering
renderContentOn: aCanvas
	self renderHeaderOn: aCanvas.
	aCanvas heading
		level: 2;
		with: 'Preguntas de ' , profile username.
	aCanvas anchor
		callback: [ cuoora user: self session user Follows: profile ];
		with: 'follow'.
	self renderUserQuestionsOn: aCanvas.
	aCanvas anchor
		callback: [ self answer ];
		with: 'Atras'
rendering
renderContentOn: aCanvas 
	self renderHeaderOn: aCanvas.
	aCanvas horizontalRule.
	aCanvas heading
		level: 2;
		with: 'Preguntas de '.
	aCanvas anchor
		callback: [ ];
		with: 'follow'.
	self renderUserQuestionsOn: aCanvas
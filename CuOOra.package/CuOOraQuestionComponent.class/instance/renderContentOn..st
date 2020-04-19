rendering
renderContentOn: aCanvas
	self renderHeaderOn: aCanvas.
	self renderQuestionOn: aCanvas.
	aCanvas horizontalRule.
	self renderAnswersOn: aCanvas.
	aCanvas break; break. aCanvas anchor
		callback: [ self answer ];
		with: [ aCanvas button: 'Atrás' ]
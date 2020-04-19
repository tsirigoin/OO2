rendering
renderContentOn: aCanvas
	self renderHeaderOn: aCanvas.
	self renderQuestionOn: aCanvas.
	aCanvas horizontalRule.
	self renderAnswersOn: aCanvas
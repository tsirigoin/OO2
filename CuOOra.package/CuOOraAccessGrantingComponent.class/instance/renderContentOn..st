accessing
renderContentOn: aCanvas
	self renderHeaderOn: aCanvas.
	aCanvas heading: 'CuOOra'.
	aCanvas horizontalRule.
	aCanvas
		form: [ self renderInputElementsOn: aCanvas.
			self renderButtonsOn: aCanvas ]
accessing
renderContentOn: aCanvas
	aCanvas heading: 'CuOOra'.
	aCanvas horizontalRule.
	aCanvas
		form: [ self renderInputElementsOn: aCanvas.
			self renderButtonsOn: aCanvas ]
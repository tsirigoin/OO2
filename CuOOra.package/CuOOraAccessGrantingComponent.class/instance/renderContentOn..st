accessing
renderContentOn: aCanvas
	self renderHeaderOn: aCanvas.
	aCanvas
		form: [ self renderInputElementsOn: aCanvas.
			self renderButtonsOn: aCanvas ]
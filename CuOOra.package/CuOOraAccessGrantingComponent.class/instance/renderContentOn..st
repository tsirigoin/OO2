rendering
renderContentOn: aCanvas
	self renderHeaderOnLog: aCanvas.
	aCanvas
		form: [ self renderInputElementsOn: aCanvas.
			self renderButtonsOn: aCanvas ]
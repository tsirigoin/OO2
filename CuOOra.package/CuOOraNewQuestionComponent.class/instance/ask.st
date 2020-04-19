callbacks
ask
	cuoora
		newQuestion: newTitle
		Text: newTextbox
		Topics: (self convertString2Topics: newTopics)
		User: self session user.
	self answer
as yet unclassified
preguntar
	| aux |
	aux := newTopics splitOn: ','.
	aux do: [ :each | cuoora newTopic: each Desc: each ].
	cuoora
		newQuestion: newTitle
		Text: newTextbox
		Topics: aux
		User: self session user.
	self answer
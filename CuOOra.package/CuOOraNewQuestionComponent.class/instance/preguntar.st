as yet unclassified
preguntar
	| aux |
	aux := newTopics splitOn: ','.
	aux do: [ :each | cuoora newTopic: each Desc: each ].
	cuoora
		newQuestion: newTitle
		Text: newTextbox
		Topics:
			(aux
				collect:
					[ :each | cuoora topics collect: [ :another | another name = each ] ])
		User: self session user.
	self answer
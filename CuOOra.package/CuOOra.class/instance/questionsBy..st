operation
questionsBy: anUser
	^ (questions select: [ :question | question user = anUser ]) sorted: [ :each :question | each time > question time ]
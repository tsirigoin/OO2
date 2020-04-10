operation
questionsBy: anUser
	^ questions select: [ :question | question user equals: anUser ]
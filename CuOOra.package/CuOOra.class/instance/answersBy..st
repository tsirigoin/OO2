operation
answersBy: anUser
	^ questions select: [ :question | question answers select: [ :answer | answer user equals: anUser ] ]
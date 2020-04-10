operation
answersBy: anUser
	^ questions
		select:
			[ :question | question answersBy: anUser ]
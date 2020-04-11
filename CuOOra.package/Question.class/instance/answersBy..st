accessing
answersBy: anUser
	^ answers select: [ :each | each user = anUser ]
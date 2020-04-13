operation
scoreFor: anUser
	| userQuestions userAnswers aux1 aux2 |
	userQuestions := self questionsBy: anUser.
	userAnswers := self answersBy: anUser.
	aux1 := userQuestions collect: [ :each | each answersBy: anUser ].
	aux2 := OrderedCollection new.
	aux1 do: [ :each | aux2 addAll: each ].
	^ userQuestions size * 20 + (userAnswers size * 50) - (aux2 size * 50)
		+ (userQuestions sumNumbers: [ :question | question netLikes ])
		+ (userAnswers sumNumbers: [ :answer | answer netLikes ])
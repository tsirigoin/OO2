operation
scoreFor: anUser
	| userQuestions userAnswers |
	userQuestions := self questionsBy: anUser.
	userAnswers := self answersBy: anUser.
	^ userQuestions size * 20 + (userAnswers size * 50) + (userQuestions sum: [ :question | question netLikes ]) + (userAnswers sum: [ :answer | answer netLikes ])
operation
scoreFor: anUser
	| userQuestions userAnswers result |
	userQuestions := self questionsBy: anUser.
	userAnswers := self answersBy: anUser.
	result := userQuestions size * 20 + (userAnswers size * 50)
		+ (userQuestions sumNumbers: [ :question | question netLikes ])
		+ (userAnswers sumNumbers: [ :answer | answer netLikes ]).
	^ result
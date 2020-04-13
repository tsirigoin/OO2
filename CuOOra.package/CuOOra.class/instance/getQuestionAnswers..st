accessing
getQuestionAnswers: aQuestion
	^ aQuestion answers
		sorted: [ :answer1 :answer2 | answer1 netLikes > answer2 netLikes ]
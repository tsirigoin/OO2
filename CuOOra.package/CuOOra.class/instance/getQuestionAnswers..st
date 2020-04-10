accessing
getQuestionAnswers: aQuestion
	^ aQuestion answers asSortedCollection:  [ :answer1 :answer2 | answer1 netLikes > answer2 netLikes ]
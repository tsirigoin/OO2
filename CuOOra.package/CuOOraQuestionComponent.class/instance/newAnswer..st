instance creation
newAnswer: aQuestion
	| aux |
	aux := CuOOraNewAnswerComponent new question: aQuestion.
	self call: aux
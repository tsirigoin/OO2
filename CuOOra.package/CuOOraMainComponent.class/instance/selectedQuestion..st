private protocol
selectedQuestion: aQuestion
	| component |
	component := CuOOraQuestionComponent new.
	component question: aQuestion.
	self call: component
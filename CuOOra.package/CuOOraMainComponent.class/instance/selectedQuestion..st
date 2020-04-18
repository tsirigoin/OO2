private protocol
selectedQuestion: aQuestion
	| component |
	component := CuOOraQuestionComponent new.
	component question: aQuestion User: loggedUser.
	self call: component
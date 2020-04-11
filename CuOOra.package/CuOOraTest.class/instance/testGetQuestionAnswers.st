test
testGetQuestionAnswers
	self
		assert:
			[ (cuoora getQuestionAnswers: (cuoora questions at: 1)) size = 3 ]
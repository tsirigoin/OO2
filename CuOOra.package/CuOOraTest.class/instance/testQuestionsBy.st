test
testQuestionsBy
	self
		assert: [ (cuoora questionsBy: (cuoora users at: 1)) size = 2 ]
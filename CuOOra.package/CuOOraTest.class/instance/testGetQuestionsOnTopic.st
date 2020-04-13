test
testGetQuestionsOnTopic
	self
		assert: (cuoora getQuestionsOnTopic: (cuoora topics at: 1)) size
		equals: 2.
	self assert: (cuoora getQuestionsOnTopic: (cuoora topics at: 2)) size equals: 1
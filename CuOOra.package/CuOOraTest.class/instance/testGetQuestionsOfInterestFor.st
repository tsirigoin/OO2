test
testGetQuestionsOfInterestFor
	self
		assert: (cuoora getQuestionsOfInterestFor: (cuoora users at: 1)) size
		equals: 3
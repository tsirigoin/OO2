test
testAddAnswerUserText
	question
		addAnswerUser: [ User newUsername: 'SantiArcadia' WithPassword: '4321' ]
		Text: 'Git gud'.
	self assert: [ question answers includes: (question answers at: 1) ]
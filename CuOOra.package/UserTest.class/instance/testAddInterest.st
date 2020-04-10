tests
testAddInterest
	user1 addInterest: topic.
	self assert: [ user1 interests includes: topic ]
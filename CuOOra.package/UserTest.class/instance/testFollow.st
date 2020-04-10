tests
testFollow
	user1 follow: user2.
	self assert: [ user1 followList includes: user2 ]
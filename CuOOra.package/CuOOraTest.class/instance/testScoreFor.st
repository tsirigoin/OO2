test
testScoreFor
	self assert: [ (cuoora scoreFor: (cuoora users at: 3)) = 171 ].
	self assert: [ (cuoora scoreFor: (cuoora users at: 2)) = 73 ].
	self assert: [ (cuoora scoreFor: (cuoora users at: 1)) = 87 ]
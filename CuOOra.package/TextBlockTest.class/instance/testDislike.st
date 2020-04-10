test
testDislike
	self assert: textblock opinions isEmpty.
	textblock dislike: user1.
	self assert: textblock netLikes equals: -1
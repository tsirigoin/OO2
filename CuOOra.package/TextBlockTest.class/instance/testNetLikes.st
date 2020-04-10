test
testNetLikes
	textblock1
		like: user1;
		like: user2.
	self assert: textblock1 netLikes equals: 2.
	textblock1 dislike: user1.
	self assert: textblock1 netLikes equals: 0
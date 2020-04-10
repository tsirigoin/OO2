test
testDislike
	self assert: textblock1 opinions isEmpty.
	textblock1 dislike: user1.
	self deny: (textblock1 opinions at: 1) like.
	textblock1 dislike: user1.
	self assert: textblock1 opinions size equals: 1.
	textblock1 dislike: user2.
	self assert: textblock1 opinions size equals: 2.
	self assert: textblock1 netLikes equals: -2.
	textblock1 like: user1.
	self assert: textblock1 opinions size equals: 2.
	self assert: textblock1 netLikes equals: 0.
as yet unclassified
follow: anUser
	(follows includes: anUser) | (anUser == self)
		ifFalse: [ follows add: anUser  ]
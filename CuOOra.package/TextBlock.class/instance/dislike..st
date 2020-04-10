accessing
dislike: anUser
	| aux |
	(aux := opinions select: [ :opinion | opinion user equals: anUser ])
		isEmpty
		ifTrue: [ opinions add: (Reaction newUser: anUser Boolean: false) ]
		ifFalse: [ (aux at: 1) like
				ifTrue: [ (aux at: 1) like: false.
					(aux at: 1) datetime: DateAndTime now ] ]
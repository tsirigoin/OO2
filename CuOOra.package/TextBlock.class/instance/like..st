accessing
like: anUser
	| aux |
	(aux := opinions
		select: [ :opinion | opinion user equals: anUser ] isEmpty)
		ifTrue: [ opinions add: [ Reaction newUser: anUser Boolean: true ] ]
		ifFalse: [ (aux at: 1) like
				ifFalse: [ (aux at: 1) like: true.
					(aux at: 1) datetime: DateAndTime now ] ]
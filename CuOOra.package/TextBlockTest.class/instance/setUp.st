running
setUp
	"Hooks that subclasses may override to define the fixture of test."

	user1 := User newUsername: 'LordAerus' WithPassword: '1234'.
	textblock1 := Question
		newTitle: 'IDK'
		Desc: 'IDC'
		Topics: (OrderedCollection with: (Topic newName: 'yeet' Desc: 'CK2 my man'))
		User: user1.
	user2 := User newUsername: 'Enzo' WithPassword: '4321'.
	textblock2 := Question
		newTitle: 'titulo'
		Desc: 'desc'
		Topics: (OrderedCollection with: (Topic newName: 'topic' Desc: 'desc2'))
		User: user1.
	textblock2
		like: user1;
		like: user2
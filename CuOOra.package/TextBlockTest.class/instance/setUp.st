running
setUp
	"Hooks that subclasses may override to define the fixture of test."

	user1 := User newUsername: 'LordAerus' WithPassword: '1234'.
	textblock := Question
		newTitle: 'IDK'
		Desc: 'IDC'
		Topics: [ Topic newName: 'yeet' Desc: 'CK2 my man' ]
		User: user1.
	user2 := User newUsername: 'Enzo' WithPassword: '4321'.
	user3 := User newUsername: 'Tom' WithPassword: '2345'.
	user4 := User newUsername: 'Alphonse' WithPassword: '5432'
running
setUp
	"Hooks that subclasses may override to define the fixture of test."

	user1 := User newUsername: 'Juanete' WithPassword: '1234'.
	user2 := User newUsername: 'Joaqu√≠n' WithPassword: '4321'.
	topic := Topic newName: 'Sports' Desc: 'Anything on sports!'
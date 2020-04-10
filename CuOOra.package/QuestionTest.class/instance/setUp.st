running
setUp
	"Hooks that subclasses may override to define the fixture of test."

	question := Question
		newTitle: 'How to GBF?'
		Desc: 'I literally dont know anything'
		Topics: [ Topic newName: 'Mobile Games' Desc: 'Anything about mobile games!' ]
		User: [ User newUsername: 'Alphonse Schweinorg' WithPassword: '1234' ].
	answer := Answer
		createAnswer: 'Git gud'
		User: [ User newUsername: 'SantiArcadia' WithPassword: '4321' ]
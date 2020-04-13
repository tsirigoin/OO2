running
setUp
	super setUp.
	cuoora := CuOOra new.
	cuoora
		newUser: 'user1' Pass: 'user1';
		newUser: 'user2' Pass: 'user2';
		newUser: 'user3' Pass: 'user3';
		newTopic: 't1' Desc: 't1';
		newTopic: 't2' Desc: 't2';
		newTopic: 't3' Desc: 't3';
		newQuestion: 'question1'
			Text: 'q1'
			Topics: (OrderedCollection with: (cuoora topics at: 1))
			User: (cuoora users at: 1);
		newQuestion: 'question2'
			Text: 'q2'
			Topics: (OrderedCollection with: (cuoora topics at: 2))
			User: (cuoora users at: 1);
		newQuestion: 'question3'
			Text: 'q3'
			Topics: (OrderedCollection with: (cuoora topics at: 1))
			User: (cuoora users at: 2);
		newQuestion: 'question4'
			Text: 'q4'
			Topics: (OrderedCollection with: (cuoora topics at: 3))
			User: (cuoora users at: 3);
		newAnswer: (cuoora questions at: 1)
			User: (cuoora users at: 2)
			Text: 'answer1';
		newAnswer: (cuoora questions at: 1)
			User: (cuoora users at: 3)
			Text: 'answer2';
		newAnswer: (cuoora questions at: 1)
			User: (cuoora users at: 1)
			Text: 'answer3';
		newAnswer: (cuoora questions at: 2)
			User: (cuoora users at: 3)
			Text: 'answer1';
		newAnswer: (cuoora questions at: 2)
			User: (cuoora users at: 3)
			Text: 'answer2';
		newAnswer: (cuoora questions at: 4) User: (cuoora users at: 1) Text: 'answer1';
		user: (cuoora users at: 1)
			Like: ((cuoora questions at: 1) answers at: 1);
		user: (cuoora users at: 2)
			Like: ((cuoora questions at: 1) answers at: 1);
		user: (cuoora users at: 3)
			Like: ((cuoora questions at: 1) answers at: 1);
		user: (cuoora users at: 1)
			Like: ((cuoora questions at: 1) answers at: 2);
		user: (cuoora users at: 2)
			Like: ((cuoora questions at: 1) answers at: 2);
		user: (cuoora users at: 3)
			Dislike: ((cuoora questions at: 1) answers at: 2);
		user: (cuoora users at: 1)
			Dislike: ((cuoora questions at: 1) answers at: 3);
		user: (cuoora users at: 2)
			Dislike: ((cuoora questions at: 1) answers at: 3);
		user: (cuoora users at: 3)
			Dislike: ((cuoora questions at: 1) answers at: 3).
	(cuoora users at: 1) follow: (cuoora users at: 3).
	(cuoora users at: 1) addInterest: (cuoora topics at: 1)
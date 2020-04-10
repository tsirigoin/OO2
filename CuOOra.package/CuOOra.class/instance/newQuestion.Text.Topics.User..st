instance creation
newQuestion: aTitle Text: aTextBlock Topics: someTopics User: anUser
	questions
		add: (Question
				newTitle: aTitle
				Desc: aTextBlock
				Topics: someTopics
				User: anUser)
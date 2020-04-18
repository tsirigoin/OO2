accessing
getQuestionsOfInterestFor: anUser
	| test |
	test := questions
		select: [ :question | anUser interestTopic: question ].
	test
		addAll:
			(questions select: [ :question | anUser interestFollow: question ]).
	^ test
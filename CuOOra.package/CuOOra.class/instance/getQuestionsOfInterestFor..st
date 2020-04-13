accessing
getQuestionsOfInterestFor: anUser
	| test |
	test := questions
		select: [ :question | anUser interests includesAny: question topics ].
	test add: [ :question | anUser followList includes: question user ].
	^ test
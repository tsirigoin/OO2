as yet unclassified
getQuestionsOfInterestFor: anUser
	"rehacer"
	^ (questions
		select: [ :question | question topics includesAnyOf: anUser interests ])
		addAll:
			(questions
				select: [ :question | question user includesAnyOf: anUser followList ])
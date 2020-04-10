accessing
getQuestionsOfInterestFor: anUser


	^ (questions
		select: [ :question | question topics includesAnyOf: anUser interests ])
		addAll:
			(questions
				select: [ :question | question user includesAnyOf: anUser followList ])
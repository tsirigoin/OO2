as yet unclassified
getQuestionsOnTopic: aTopic
	^questions select: [ :question | question topics includes: aTopic ]
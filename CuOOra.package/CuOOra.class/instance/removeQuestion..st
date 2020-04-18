removing
removeQuestion: aQuestion
	aQuestion answers do: [ :each | each killOpinions ].
	aQuestion answers removeAll.
	aQuestion killOpinions.
	questions remove: aQuestion.
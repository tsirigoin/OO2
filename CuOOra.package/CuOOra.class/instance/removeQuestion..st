removing
removeQuestion: aQuestion
	aQuestion answers killOpinions.
	aQuestion answers removeAll.
	aQuestion killOpinions.
	questions remove: aQuestion.
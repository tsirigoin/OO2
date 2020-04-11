operation
answersBy: anUser
	| aux result |
	aux := questions
		select: [ :question | (question answersBy: anUser) isNotEmpty ].
	aux := aux collect: [ :question | question answersBy: anUser ].
	result := OrderedCollection new.
	aux do: [ :each | result addAll: each ].
	^ result
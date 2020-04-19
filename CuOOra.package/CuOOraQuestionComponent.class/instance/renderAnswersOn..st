rendering
renderAnswersOn: aCanvas
	aCanvas orderedList
		style: 'list-style-type:none';
		with: [ question answers isNotEmpty
				ifTrue: [ 1 to: (cuoora getQuestionAnswers: question) size do: [ :each | 
						self
							answer: ((cuoora getQuestionAnswers: question) at: each)
							Render: aCanvas ] ] ].
	aCanvas paragraph: 'No hay más respuestas.'.
	aCanvas anchor
		callback: [ self newAnswer: question ];
		with: [ aCanvas button: 'Agregar una respuesta.' ]
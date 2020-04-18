rendering
renderQuestionsOn: aCanvas
	aCanvas orderedList
		style: 'list-style-type:none';
		with: [ (cuoora getQuestionsOfInterestFor: loggedUser) isNotEmpty
				ifTrue: [ 1 to: ((cuoora getQuestionsOfInterestFor: loggedUser) size min: 5)
					do: [ :each | self question: ((cuoora getQuestionsOfInterestFor: loggedUser) at: each) Render: aCanvas ] ]
				ifFalse: [ aCanvas
						text:
							'No tienes preguntas interesantes, ¿por qué no sigues alguno de tus tópicos favoritos para comenzar?' ] ]
rendering
renderQuestionsOn: aCanvas
	aCanvas orderedList
		style: 'list-style-type:none';
		with: [ (cuoora getQuestionsOfInterestFor: self session user) isNotEmpty
				ifTrue: [ 1 to: ((cuoora getQuestionsOfInterestFor: self session user) size min: 5)
					do: [ :each | 
						self
							question: ((cuoora getQuestionsOfInterestFor: self session user) at: each)
							Render: aCanvas ] ]
				ifFalse: [ aCanvas
						text:
							'No tienes preguntas interesantes, ¿por qué no sigues alguno de tus tópicos favoritos para comenzar?' ] ]
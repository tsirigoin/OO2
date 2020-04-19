rendering
renderUserQuestionsOn: aCanvas
|listaPreg|
listaPreg := cuoora questionsBy: perfil.
	aCanvas orderedList
		style: 'list-style-type:none';
		with: [ listaPreg isNotEmpty
				ifTrue: [ 1 to: (listaPreg size min: 5)
					do: [ :each | 
						self
							question: (listaPreg at: each)
							Render: aCanvas ] ]
				ifFalse: [ aCanvas
						text:
							'El usuario no tiene preguntas todavia' ] ]
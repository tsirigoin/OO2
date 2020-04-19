services
question: aQuestion Render: aCanvas
	| aux |
	aux := String
		streamContents: [ :s | 
			(aQuestion topics collect: [ :each | each name ])
				do: [ :each | 
					s
						nextPutAll: each asString;
						nextPutAll: ', ' ] ].
	aux := aux copyFrom: 1 to: aux size - 2.
	aCanvas anchor
		callback: [ self selectedQuestion: aQuestion ];
		with: [ aCanvas big: [ aCanvas emphasis: aQuestion title ] ].
	aCanvas
		break;
		text: 'Topicos: ';
		text: aux;
		break;
		text: 'Realizada por';
		space.
	aCanvas anchor
		callback: [ self perfil: (aQuestion user) ];
		with: aQuestion user username.
	aCanvas
		space;
		text: '|';
		space;
		text: aQuestion answers size asString;
		space;
		text: 'respuestas';
		break;
		text: aQuestion likes;
		space;
		text: 'likes |';
		space;
		text: aQuestion dislikes;
		space;
		text: 'dislikes';
		break.
	aCanvas anchor
		callback: [ aQuestion like: self session user ];
		with: 'like'.
	aCanvas text: ' | '.
	aCanvas anchor
		callback: [ aQuestion dislike: self session user ];
		with: 'dislike'.
	aCanvas break; break.
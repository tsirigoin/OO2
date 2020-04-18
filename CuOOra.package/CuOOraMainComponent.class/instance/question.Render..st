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
	aCanvas
		big: [ aCanvas emphasis: aQuestion title ];
		break;
		text: 'Topicos: ';
		text: aux;
		break;
		text: 'Realizada por';
		space.
	aCanvas anchor
		callback: [  ];
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
		callback: [ aQuestion like: loggedUser ];
		with: 'like'.
	aCanvas text: ' | '.
	aCanvas anchor
		callback: [ aQuestion dislike: loggedUser  ];
		with: 'dislike'
services
question: aQuestion Render: aCanvas
	| aux |
	aux := String
		streamContents: [ :s | 
			(aQuestion topics collect: [ :each | each name ])
				do: [ :each | 
					s
						nextPutAll: each asString;
						nextPutAll: ',' ] ].
	aux := aux copyFrom: 1 to: aux size - 1.
	aCanvas
		big: [ aCanvas emphasis: aQuestion title ];
		break;
		text: 'Topicos: ';
		text: aux;
		break;
		text: 'Realizada por';
		space;
		strong: aQuestion user username;
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
		text: 'dislikes'
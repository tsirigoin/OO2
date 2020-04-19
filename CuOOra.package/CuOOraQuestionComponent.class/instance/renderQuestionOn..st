rendering
renderQuestionOn: aCanvas
	| aux |
	aux := String
		streamContents: [ :s | 
			(question topics collect: [ :each | each name ])
				do: [ :each | 
					s
						nextPutAll: each asString;
						nextPutAll: ', ' ] ].
	aux := aux copyFrom: 1 to: aux size - 2.
	aCanvas big: [ aCanvas emphasis: question title ].
	aCanvas
		break;
		text: 'Topicos: ';
		text: aux;
		break;
		text: 'Realizada por';
		space.
	aCanvas anchor
		callback: [ self profile: (question user) ];
		with: question user username.
	aCanvas
		space;
		text: '|';
		space;
		text: question answers size asString;
		space;
		text: 'respuestas';
		break;
		text: question likes;
		space;
		text: 'likes |';
		space;
		text: question dislikes;
		space;
		text: 'dislikes';
		break.
	aCanvas anchor
		callback: [ question like: self session user ];
		with: 'like'.
	aCanvas text: ' | '.
	aCanvas anchor
		callback: [ question dislike: self session user ];
		with: 'dislike'
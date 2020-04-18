as yet unclassified
answer: anAnswer Render: aCanvas
	aCanvas big: [ aCanvas emphasis: 'Respuesta de ' ].
	aCanvas anchor
		callback: [  ];
		with: [ aCanvas big: [ aCanvas emphasis: anAnswer user username ] ].
	aCanvas
		break;
		paragraph: anAnswer textblock ;
		text: anAnswer likes;
		space;
		text: 'likes |';
		space;
		text: anAnswer dislikes;
		space;
		text: 'dislikes';
		break.
	aCanvas anchor
		callback: [ anAnswer like: loggedUser ];
		with: 'like'.
	aCanvas text: ' | '.
	aCanvas anchor
		callback: [ anAnswer dislike: loggedUser ];
		with: 'dislike'.
	aCanvas horizontalRule
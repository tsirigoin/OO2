rendering
renderContentOn: aCanvas
	aCanvas div
		style: 'display:flex; justify-content:space-between; align-items:center';
		with: [ aCanvas heading: 'CuOOra'.
			aCanvas
				div: [ aCanvas
						strong: [ aCanvas anchor
								callback: [  ];
								with: loggedUser username ] ].
			aCanvas button
				callback: [  ];
				with: 'Cerrar Sesión' ].
	aCanvas horizontalRule.
	self renderQuestionOn: aCanvas.
	aCanvas horizontalRule.
	self renderAnswersOn: aCanvas
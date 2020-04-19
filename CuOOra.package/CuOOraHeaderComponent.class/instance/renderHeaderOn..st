as yet unclassified
renderHeaderOn: aCanvas
	aCanvas div
		style: 'display:flex; justify-content:space-between; align-items:center';
		with: [ aCanvas heading: 'CuOOra'.
			aCanvas
				div: [ self session isLoggedIn
						ifTrue: [ aCanvas
								strong: [ aCanvas anchor
										callback: [  ];
										with: self session user username ].
							aCanvas button
								callback: [  ];
								with: 'Cerrar Sesión' ]
						ifFalse: [ aCanvas button callback: [  ]; with: 'Iniciar Sesión' ].
						aCanvas button callback: [  ]; with: 'Registrarse' ] ]
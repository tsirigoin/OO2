rendering
renderHeaderOn: aCanvas
	aCanvas div
		style: 'display:flex; justify-content:space-between; align-items:center';
		with: [ aCanvas heading: 'CuOOra'.
			aCanvas
				div: [ self session isLoggedIn
						ifTrue: [ aCanvas
								strong: [ aCanvas anchor
										callback: [ self profile: (self session user)];
										with: self session user username ].
									aCanvas space.
							aCanvas anchor
								callback: [ self session logout. self answer  ];
								with: [ aCanvas button with: 'Cerrar Sesión' ] ]
						ifFalse: [ aCanvas anchor
								callback: [ self sessionLogin ];
								with: [ aCanvas button with: 'Iniciar Sesión' ].
								aCanvas space.
							aCanvas anchor
								callback: [ self signup ];
								with: [ aCanvas button with: 'Registrarse' ] ] ] ].
	aCanvas horizontalRule
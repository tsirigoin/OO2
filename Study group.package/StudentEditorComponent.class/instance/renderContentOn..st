rendering
renderContentOn: aCanvas
	aCanvas
		form: [ aCanvas
				paragraph: [ aCanvas label: 'Nombre: '.
					aCanvas textInput on: #newName of: self ].
			aCanvas
				paragraph: [ aCanvas label: 'Edad: '.
					aCanvas textInput on: #newAge of: self ].
			aCanvas button
				callback: [ self accept ];
				with: 'Guardar'.
			aCanvas space.
			aCanvas button
				callback: [ self cancel ];
				with: 'Cancelar' ]
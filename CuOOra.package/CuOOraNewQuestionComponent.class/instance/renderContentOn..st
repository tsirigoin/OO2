rendering
renderContentOn: aCanvas
	self renderHeaderOn: aCanvas.
	aCanvas heading
		level: 2;
		with: [aCanvas emphasis:'Nueva pregunta'].
	aCanvas horizontalRule .
	aCanvas
		form:[ 
			aCanvas div
			style: 'display:flex; justify-content:space-between; align-items:right; padding: 10px;';
			with: [aCanvas emphasis: 'Título '. aCanvas textInput size:84; on: #newTitle of: self.].
		
			aCanvas div
			style: 'display:flex; justify-content:space-between; align-items:right; padding: 10px;';
			with: [ aCanvas emphasis: 'Desarrollo '. aCanvas textArea rows: 10; columns: 84;on: #newTextbox of: self ].
			
			aCanvas div
			style: 'display:flex; justify-content:space-between; align-items:right; padding: 10px;';
			with: [aCanvas emphasis: 'Tópicos '. aCanvas textInput size:84; on: #newTopics of: self ].
			aCanvas submitButton
			callback: [ self preguntar ];
			with: 'Aceptar'.
			aCanvas space.
			aCanvas cancelButton
			callback: [ self answer ];
			with: 'Cancelar' ].
		aCanvas horizontalRule .
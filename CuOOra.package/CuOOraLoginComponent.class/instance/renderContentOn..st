accessing
renderContentOn: aCanvas
	"piso el renderContentOn del padre para mostrar error si es que hubo"
	lastError ifNotNil: [ aCanvas paragraph: lastError. lastError := nil ].
	
	super renderContentOn: aCanvas.
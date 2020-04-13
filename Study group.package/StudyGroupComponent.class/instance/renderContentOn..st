rendering
renderContentOn: aCanvas
	aCanvas
		unorderedList: [ group students
				do: [ :each | 
					aCanvas listItem: [ aCanvas anchor
								callback: [ self edit: each ];
								with: each name ] ] ].
	aCanvas anchor
		callback: [ self newStudent ];
		with: [ aCanvas button: 'Add' ]
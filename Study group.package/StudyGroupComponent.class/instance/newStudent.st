callbacks
newStudent
	| editor |
	editor := StudentEditorComponent student: Student new.
	self call: editor.
	editor student ifNotNil: [ group addStudent: editor student ]
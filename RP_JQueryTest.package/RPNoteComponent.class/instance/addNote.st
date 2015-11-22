as yet unclassified
addNote

	note := CTNote new.
	note taskNote: self noteString.
	self parentTask notes add: note.
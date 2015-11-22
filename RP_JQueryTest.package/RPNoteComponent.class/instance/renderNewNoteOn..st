accessing
renderNewNoteOn: html

	| noteEntry |
	noteEntry := CTToDoListItemNoteComponent new.
	noteEntry note: self note.
	html render: noteEntry.
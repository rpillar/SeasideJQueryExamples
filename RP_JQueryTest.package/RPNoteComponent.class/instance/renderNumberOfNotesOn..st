accessing
renderNumberOfNotesOn: html

	| myNumber |
	myNumber := ( self parentTask ) numberOfNotes asString.
	
	html div 
		with: [ 
			html span 
				with:  '( ', myNumber, ' )'.
		].		
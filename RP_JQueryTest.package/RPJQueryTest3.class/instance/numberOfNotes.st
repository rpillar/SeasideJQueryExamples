accessing
numberOfNotes

	| myNumber |
	myNumber := self task notes size asString.
	^ '( ', myNumber, ' )'.	
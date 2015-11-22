getdata
getEmailName

	| myUser |
	myUser := self userStore findUserByEmail: self email.

	(myUser isNil ) 
		ifTrue: [ self user: nil ]
		ifFalse: [ self user: myUser ].
	
	
as yet unclassified
initialize

	super initialize.
	
	self task:  CTTask new.	
	
	"initialise task details"	
	self task taskName: 'My first task'.
	self task taskDescription: 'This is my task description'.	
	self task status: 'Active'.
	self task id: '12345'.
		
	self noteComponent: RPNoteComponent new.	
	self noteComponent parentTask: self task.	

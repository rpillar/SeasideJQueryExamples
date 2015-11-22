rendering
renderUserDataTasksOn: html	
	
	| myTasks taskItem |
	
	myTasks := self user tasks.

	myTasks isEmpty 
		ifTrue: [ 
			html paragraph 
				with: 'There are no Tasks.'.	
	 	]
		ifFalse: [ 
			html div
				class: 'taskblock'; 
				with: [ 
					html table 
						with: [ 
							html tableRow 
								class: 'th-row';
								with: [ 
									html tableHeading 
										with: 'Description'.
									html tableHeading 
										with: 'Status'.	
									html tableHeading 
										with: 'Deadline'.	
								].			
							myTasks do: [  :each |
								each status = 'Active'
									ifTrue: [ 
										taskItem := RPTaskComponent new.
										taskItem task: each.
										html render: taskItem.
									]	
							]
						]
				]
		]
rendering
renderUserDataOn: html
	
	| taskDisplay |
	taskDisplay := 0.
	
	( self user notNil )
		ifTrue: [ 
			html div 
				class: 'userName';
				script: (
					( html jQuery this )
						on: 'click'
						selector: '.tasklist'
						do: ( (
							( ( html jQuery class: 'taskblock' ) remove ),
							( ( html jQuery id: 'userDataTasks' ) append: [ :r | self renderUserDataTasksOn: r  ] ),
							( ( html jQuery class: 'tasktext' ) text: ' - ( Close )'  )
						) asFunction: #(event) )
				);
				script: (
					( html jQuery this )
						on: 'click'
						selector: '.tasktext'
						do: ( (
							( ( html jQuery class: 'taskblock' ) remove ),
							( ( html jQuery class: 'tasktext' ) text: ''  )
						) asFunction: #(event) )
				);
				with: [
					html table 
					with: [  
						html tableRow
						class: 'th-row'; 
						with: [ 
							html tableHeading  
								with: 'Username'.
							html tableHeading 
								with: 'Email'.	
							html tableHeading 
								with: 'Id'.			
						].
						html tableRow 
						with: [ 
							html tableData 			
								with: self user userName.		
							html tableData 			
								with: self user email.	
							html tableData 			
								with: self user id.							
						].
					].
				      html break.
					html anchor 
						class: 'tasks';
						with: [
							html span 
								class: 'tasklist';		
								with: 'Tasks'.
							html span 
								class: 'tasktext';		
								with: ''.		
						].			
					html div 
						id: 'userDataTasks'.		
				]	
		]
		ifFalse: [  
			html div 
				class: 'userName';
				with: [ 
					html paragraph 
					with: 'Not Found'
				]	
		]. 
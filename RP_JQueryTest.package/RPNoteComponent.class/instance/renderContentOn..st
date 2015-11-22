accessing
renderContentOn: html
		
	html div 
		class: 'row';
		class: 'note-input';
		with: [ 
			
			html div 
				class: 'col-md-1'.
			html div 
				class: 'col-md-10';
				with: [ 	
	
					html form
						class: 'addNoteText'; 
						with: [  
			
							html div
								with: [ 			
									html textArea 
										class: 'form-control';
										class: 'note-entry';
										rows: 3;
										attributeAt: 'autocomplete' put: 'off';
										placeholder: 'Add a Note';
										callback: [ :value | self processInput: value ].
								].
			
							html div	
								class: 'task-link';
								with: [	
									( html button )
										bePush;
  										class: 'btn';
										class: 'btn-default';
										class: 'btn-primary';
										class: 'btn-addnote';						
										onClick: ( ( html jQuery ajax )
												serializeForm;
												script: [ :s | 
													self addNote. 
													s << ( ( s jQuery id: 'note-data', parentTask id ) append: [ :r | self renderNewNoteOn: r ] ) 
												]; 
												onComplete: ( 
													( ( ( ( html jQuery expression: ( JSStream on: 'event.target' ) ) closest: '.task-block' ) find: '.numberofnotes' ) load html: [ :r | self renderNumberOfNotesOn: r ] ),
													( ( ( ( html jQuery expression: ( JSStream on: 'event.target' ) ) closest: '.task-data' ) find: '.no-notes' ) remove ),
													( ( html jQuery class: #'note-input' ) remove )
								 				)
										);
										with: 'Save'.											
									html button 
										bePush;
										class: 'btn';
										class: 'btn-default';
										class: 'btn';
										class: 'btn-cancelnote';
										onClick: ( 
											( ( html jQuery class: #'note-input' ) remove )
										);
										with: 'Cancel'.	
								].
						].				
				].				
		].				
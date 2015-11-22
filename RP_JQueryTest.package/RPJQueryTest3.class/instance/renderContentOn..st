as yet unclassified
renderContentOn: html

	html div 
		class: 'container';
		with: [
			 
			html div 
				class: 'header';
				with: [ 
					html heading
						with:  [ 
							html span
								class: 'header'; 
								with: 'Seaside - Add notes to Task - Example'.
						]		
				].	
					
				html div 
				class: 'task-block';
				with: [ 
					html div 
						class: 'row';
						with: [ self  renderTaskDescriptionOn: html. ].

					html div
						class: 'task-data';
						with: [ self  renderTaskNotesOn: html. ]. 
				].		
			
			html div 
				class: 'col-md-12';
				with: [ 
					html div 
						class: 'col-md-5'.
					html div 
						class: 'col-md-2';
						class: 'task-split'.
					html div 
						class: 'col-md-5'.	
				].		
		].	 
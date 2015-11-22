as yet unclassified
renderTaskDescriptionOn: html.
		
	html div
		class: 'task';
		with: [ 
			html div 
				class: 'col-md-1'.
			html div 
				class: 'col-md-5';
				with: self task taskDescription. 
			html div 
				class: 'col-md-3';
				with: self task status.
			html div 
				class: 'col-md-1';
				with: [  
					html anchor 
						class: 'expand';														
						with: [ 
							html span 
								class: 'fa';
								class: 'fa-plus';
								class: 'fa-2x'		
						] .
				].
			html div 
				class: 'col-md-1';
				class: 'numberofnotes';
				with: [
					html span 
					with: self numberOfNotes .
				].
			html div 
				class: 'col-md-1'.		
		].
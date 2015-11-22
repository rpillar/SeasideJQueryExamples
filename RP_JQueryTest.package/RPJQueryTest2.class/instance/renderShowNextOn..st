rendering
renderShowNextOn: html

	html div 
		with: [  
			html heading level: 2; with: 'Click to display more information (toggle)'
		].

	html div 
		class: 'view';
		script: (
			html jQuery this 
			on: 'click'
			selector: '.info-t'
			do: ( ( html jQuery this ) next ) toggle
		);
		with: [ 
			html anchor 
				class: 'info-t';
				with: [
					html span 
						class: 'info-toggle'; 
						with: 'Hello World 1'.
				].
			html paragraph 
				class: 'welcome';
				style: 'display:none';
				with: 'Welcome !!!!'.				
			html anchor 
				class: 'info-t';
				with: [ 
					html span 
						class: 'info-toggle';
						with: 'Hello World 2'.
				].	
			html paragraph 
				class: 'welcome';
				style: 'display:none';
				with: 'Welcome !!!!'.					
		].	
	
	html horizontalRule.	

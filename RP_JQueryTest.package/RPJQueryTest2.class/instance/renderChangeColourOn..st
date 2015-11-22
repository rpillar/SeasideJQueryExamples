rendering
renderChangeColourOn: html

	html div 
		with: [  
			html heading level: 2; with: 'Click to change my colour'
		].
	
	html div 
		class: 'changeme';
		script: (
			html jQuery this 
			on: 'click'
			do: ( ( html jQuery: '.p1' ) addClass: 'changeColor' )
		);
		with: [ 
			html paragraph 
				class: 'p1';
				with: 'Hello World Again'.				
		].	
	
	html horizontalRule.

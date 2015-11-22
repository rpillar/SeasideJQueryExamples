rendering
renderTimeNowOn: html

	html div 
		with: [  
			html heading level: 2; with: 'Click on Update to display the current time'
		].
	
	html div 
		id: #time;
		with: [ 
			html render: Time now.
		].
	
	html break.
 
 	html anchor
		onClick: ( html jQuery ajax 
			script: [ :s | s << (s jQuery: #time) html: [ :r | r render: Time now ] ] );
		with: [ 	
			html span 
				class: 'update-time';	
     				with: 'Update'.
		].	
	
	html horizontalRule.

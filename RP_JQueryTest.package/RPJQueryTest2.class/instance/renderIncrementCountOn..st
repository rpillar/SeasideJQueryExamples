rendering
renderIncrementCountOn: html

	html div 
		with: [  
			html heading level: 2; with: 'Click to increment my count'
		].

	"click on a button, do something to an object value and display a result"
	html div 
		class: 'validate';
		with: [ 
			( html button )
			bePush;
			class: 'incrementButton';	
			onClick: 	(
				( html jQuery id: 'thisIsMyDiv' ) load
					html: [ :canvas | self counter increment. self renderMyCounterOn: canvas ]
			);
			with: 'Increment Count'
		].
	
	html div 
		id: 'thisIsMyDiv';
		with: [
			self renderMyCounterOn: html.
		].	

	html horizontalRule.

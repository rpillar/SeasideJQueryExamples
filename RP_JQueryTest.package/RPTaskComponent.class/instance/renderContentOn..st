as yet unclassified
renderContentOn: html
	
	html tableRow 
		with: [ 
			html tableData 
				class: 'taskdata';
				with: self task taskDescription.
			html tableData 
				class: 'taskdata';			
				with: self task status.	
			html tableData 
				class: 'taskdata';			
				with: self task deadline.	
		].
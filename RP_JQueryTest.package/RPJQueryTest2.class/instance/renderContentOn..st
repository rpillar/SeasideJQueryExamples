rendering
renderContentOn: html

	html div 
		with: [ 
			html heading
				with:  [ 
					html span
						class: 'header'; 
						with: 'Seaside JQuery Examples'.
				]		
		].
	
	self renderShowNextOn: html.	
	self renderChangeColourOn: html.
	self renderIncrementCountOn: html.
	self renderTimeNowOn: html.
	self renderMyFormOn: html.
	self renderGetUserOn: html.
as yet unclassified
renderContentOn: html

	html div 
		class: 'col-md-4';
		class: 'col-md-offset-4';
		class: 'login-form';
		with: [ 	
			html div 
				class: 'panel';
				class: 'panel-default';
				with: [ 
					html div 
						class: 'panel-heading';
						with: [ 
							html heading level: 1;
								with: [ 
									html span 
										class: 'form-header';
										with: 'StockMAN'
								].
							html break.
							html paragraph 
								with: 'Stock management the SMART way'.
							html break.	
						].
	 		 		html form
						class: 'form';
						class: 'panel-body';
						with: [ 
							self renderEmailInputOn: html.
							self renderPasswordInputOn: html.
							self renderButtonsOn: html.	
							self renderResetPasswordOn: html.	
						].
				].
			html div 
				class: 'col-md-3'.
		].
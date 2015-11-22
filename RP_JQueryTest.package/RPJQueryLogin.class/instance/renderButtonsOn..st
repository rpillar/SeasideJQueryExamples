as yet unclassified
renderButtonsOn: html

	html div 
		class: 'form-group';
		with: [ 
			html div
				class: 'input-group';
				class: 'col-md-12';
				with: [ 
					html button 
						class: 'btn btn-primary login-button'; 
						callback: [ 
							self validateLogin
						]; 
						with: [ 
							html span 
 							class: 'input-group-add-on';
							with: [ 
								html span 
									class: 'glyphicon';
 									class: 'glyphicon-play';
									with: [ 
										html span
										class: 'button-text';
										with: 'Login'.
									].	
							].
						];
						value: 'Login'.				
				]
		] 
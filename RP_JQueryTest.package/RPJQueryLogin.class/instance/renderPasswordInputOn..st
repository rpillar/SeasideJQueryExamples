as yet unclassified
renderPasswordInputOn: html

	html div 
		class: 'form-group';
		with: [ 
			html div 
				class: 'input-group';
				class: 'col-md-12';
				with: [ 
					html span 
						class: 'input-group-addon';
						with: [
							html span 
								class: 'glyphicon';
								class: 'glyphicon-lock'
						].
					html passwordInput 
						class: 'form-control';
						attributeAt: 'placeholder' put: 'password';
						on: #password of: self.
				]
		].	 
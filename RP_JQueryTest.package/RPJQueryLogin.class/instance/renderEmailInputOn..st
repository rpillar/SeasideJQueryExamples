as yet unclassified
renderEmailInputOn: html

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
								class: 'glyphicon-user'
						].
					html textInput 
						class: 'form-control';
						autofocus;
						attributeAt: 'placeholder' put: 'john.doe@gmail.com';
						on: #email of: self.
				]
		].	 
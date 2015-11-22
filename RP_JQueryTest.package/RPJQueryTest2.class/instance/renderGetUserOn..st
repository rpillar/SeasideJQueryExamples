rendering
renderGetUserOn: html

	html div 
		with: [  
			html heading level: 2; with: 'Enter an email address and click the button  - if the user exists within our database display details.'
		].

	"get user data from a sandstone db ..."
	html div 
		class: 'form-block';
		with: [ 
			html form 
				class: 'test-form';
				with: [ 
					html div 
						class: 'form-block';
						with: [  
							html label 
								with: 'Email : '.
							html textInput
								id: #'myEmail';
								autofocus;
								attributeAt: 'autocomplete' put: 'off';
								on: #email of: self.
							( html button )
								bePush;
								class: 'getEmail';
								onClick: (  (  html jQuery ajax ) 
										serializeForm;
										script: [  :s | self getEmailName. 
											s << (  ( s jQuery class: #'userName' ) remove  ).
											s << (  ( s jQuery id: #'userData' ) append: [ :r | self renderUserDataOn:  r ]  )  
										];
										onComplete: ( ( html jQuery id: #'myEmail' ) value: '' )
								);								
								value: 'Get User Data'.										
						].
				].
	   	].

	html horizontalRule.
			
	html div
		id: 'userData'.
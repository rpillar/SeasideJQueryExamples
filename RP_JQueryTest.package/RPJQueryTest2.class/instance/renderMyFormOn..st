rendering
renderMyFormOn: html

	| textBlock |

	html div 
		with: [  
			html heading level: 2; with: 'Enter some text, press ENTER and see it displayed.'
		].

	"Do something with a form ..."
	html div 
		class: 'form-block';
		with: [ 
			html div
				class: 'test-form';
				with: [ 
					html div 
						class: 'form-block';
						with: [  
							html label 
								with: 'Text : '.
							html textInput
								id: #'myValue';
								autofocus;
								attributeAt: 'autocomplete' put: 'off';
								callback: [ :value | textBlock := self addText: value ];
								onChange: ( html jQuery ajax 
									serializeThis;
									script: [  :s | s << ( ( s jQuery id: 'tezt' ) append: textBlock ) ];
									onComplete: ( ( html jQuery id: #'myValue' ) value: '' )
								);	
								with: ''.									
						]
				].
	   ].

	html div
		id: 'tezt'.
			
	html horizontalRule.


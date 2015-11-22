as yet unclassified
renderContentOn: html

	| myUser myDB |
	
	html paragraph: [ 
		html anchor 
			onClick: (( html jQuery: #count ) load
			   html: [ :h | h render: ( count := count -1 ) ] );
			with: '--'.
		html span 
			id: #count;
			class: 'spaces';
			with: count.
		html anchor 
			onClick: (( html jQuery: #count ) load
			   html: [ :h | h render: ( count := count + 1 ) ] );
			with: '++'		
	].

	html break.
	html horizontalRule.

	html div
		id: 'testId1';
		with: [  
			html anchor 
				id: 'test_id1';
				script: ( (
					html jQuery this
						on: 'click'
						do: ( ( html jQuery id: #'para1' ) remove ) 
				) );
				with: 'Click Me to remove para1'.	
		].
	
	html break.
	html horizontalRule.

	html div
		id: 'testId2';
		with: [  
			html anchor 
				script: ( (
					html jQuery this
						on: 'click'
						do: ( ( html jQuery this parent) addClass: 'testThis' )
				) );
				with: 'Press Me - add a class to change my colour ...'.
				
			html break.
			html paragraph
				with: 'Hello Cruel World ....'.	
		].

	html horizontalRule.
	
	myDB := CTSandstoneDatabase new.
	myUser := myDB findUserByEmail: 'rp2@heg.com'.
					
	html paragraph: [ 
		html div 
			id: 'testdiv';
			script: (
				html jQuery this
						on: 'click'
						selector: '.paraXclick'
						do: ( (
							( ( html jQuery expression: ( JSStream on: 'event.target' ) ) find: '.paraX' ) show
						) asFunction: #(event) ) 
				);
			with: [
				html anchor 
					class: 'paraXclick';
					with: 'paraX - click me.'.
				html paragraph 
					class: 'paraX';
					style: 'display:none';
					with: 'I am a paragraph with a class of paraX'.	
			]	
	].
		
	html div 
		id: 'changeMe';
		with: [ 
			html paragraph
				id: 'para1'; 
				with: 'I am a paragraph - in the midst of a lonely planet'.
		].
	
	html horizontalRule.
	
	html paragraph: [ 
		html anchor 
			script: ( (
					html jQuery this
						on: 'click'
						do: ( ( html jQuery ajax ) callback: [ myUser userName: 'rp98'. myUser save. ] )
				) );
			with: 'Change User Name to rp98'.
	].

	html horizontalRule.
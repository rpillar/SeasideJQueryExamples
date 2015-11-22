as yet unclassified
renderTaskNotesOn: html
	"need to list task notes here"

	| autoAttrOn noteEntry |
	autoAttrOn := Dictionary newFrom: { #autofocus->true  }.
	
	html div 
		id: 'note-data', self task id;
		with: [ 
			self task notes isEmpty 
				ifTrue: [ 
					html div 
						class: 'row';
						class: 'no-notes';
						with: [ 
							html div
								class: 'col-md-1'.
							html div
								class: 'col-md-10';
								with: 'This task has no notes'.
							html div 
								class: 'col-md-1'.	
						]			
	 			]
				ifFalse: [ 	
					self task notes do: [ 
						:each | 
							noteEntry := CTToDoListItemNoteComponent new.
							noteEntry note: each.
							html render: noteEntry.
					].		
				].
			].		
		
	"Add Note link / button with callback"	
	html div 
		class: 'row';
		with: [
			html div 
				class: 'col-md-1'.			
			html div
				class: 'col-md-10';
				class: 'note-action';
				with: [  				
					html anchor	
						class: 'add-note';
						onClick: ( ( html jQuery ajax )
								script: [ :s | s << ( ( s jQuery class: 'note-input-block') html: noteComponent ) 
							];
							onComplete: ( 
								( ( html jQuery class: #'note-entry' ) attributes: autoAttrOn ),
								( ( html jQuery class: #'note-input' ) show: 0.2 seconds )
							)
						);	
						with: [
							html span
								class: 'note-link';  
								with: 'Add Note'.											
						].																								
				].
			html div 
				class: 'col-md-1'.
		].
	
	html div 
		class: 'row';
		class: 'note-input-block'.
	
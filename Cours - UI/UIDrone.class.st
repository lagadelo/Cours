Class {
	#name : 'UIDrone',
	#superclass : 'SpPresenter',
	#instVars : [
		'model',
		'rsCanvas',
		'carte'
	],
	#category : 'Cours - UI',
	#package : 'Cours - UI'
}

{ #category : 'accessing' }
UIDrone >> carte [

	^ carte
]

{ #category : 'accessing' }
UIDrone >> carte: a [

	carte := a.
	carte properties at: #position put: 0 @ 0
]

{ #category : 'initialize' }
UIDrone >> configureCanvas [
"	self rsCanvas
		when: RSMouseClick
		do: [ :evt |
				  evt position.]"
]

{ #category : 'defaults' }
UIDrone >> defaultBitmap [
^ (RSBitmap newFrom: (ImageReadWriter formFromFileNamed: 'Brest.png'))


 
]

{ #category : 'layout' }
UIDrone >> defaultLayout [

	^ SpBoxLayout newTopToBottom
		  add: (SpRoassalPresenter new
				   canvas: self rsCanvas;
				   yourself);
		  yourself
]

{ #category : 'initialize' }
UIDrone >> generateForms [

"			dot @ (RSMenuActivable new menuDo: [ :aMenuMorph :aRSNode |
					 aMenuMorph   addLine; 
						 add: 'Inspect'
						 target: aRSNode
						 selector: #inspect 
						 argument: #(  ).
					  "
	 
]

{ #category : 'initialize' }
UIDrone >> initialize [

	super initialize.
	rsCanvas := RSCanvas new.
	self configureCanvas.
	self carte: self defaultBitmap.
	rsCanvas add: self carte.

 
]

{ #category : 'accessing' }
UIDrone >> model [

	^ model
]

{ #category : 'accessing' }
UIDrone >> model: anObject [

	model := anObject
]

{ #category : 'accessing' }
UIDrone >> rsCanvas [

	 
	^rsCanvas
]

{ #category : 'accessing' }
UIDrone >> rsCanvas: anObject [

	rsCanvas := anObject
]

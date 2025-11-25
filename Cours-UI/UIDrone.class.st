Class {
	#name : 'UIDrone',
	#superclass : 'SpPresenter',
	#instVars : [
		'model',
		'rsCanvas',
		'carte',
		'dictionnaire'
	],
	#category : 'Cours-UI',
	#package : 'Cours-UI'
}

{ #category : 'exemples' }
UIDrone class >> exemple [ 
ObservateurConcretPourUI follow: Cluster new  
]

{ #category : 'accessing' }
UIDrone >> carte [

	^ carte
]

{ #category : 'accessing' }
UIDrone >> carte1: anObject [

	carte := anObject
]

{ #category : 'accessing' }
UIDrone >> carte: anObject [

	carte := anObject.
	carte properties at: #position put: 0 @ 0
]

{ #category : 'initialize' }
UIDrone >> configureCanvas [

	self rsCanvas
		when: RSMouseClick
		do: [ :evt | self model addDrone: (Drone exemple: 'test' at:  self carte extent / 2 + evt position)   ]
		for: self
]

{ #category : 'layout' }
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

{ #category : 'accessing' }
UIDrone >> dictionnaire [

	^ dictionnaire
]

{ #category : 'accessing' }
UIDrone >> dictionnaire: anObject [

	dictionnaire := anObject
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
	self dictionnaire: Dictionary new
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

	^ rsCanvas
]

{ #category : 'accessing' }
UIDrone >> rsCanvas: anObject [

	rsCanvas := anObject
]

{ #category : 'updating' }
UIDrone >> updateMonModele [ 
	 
	self model drones do: [:aDrone |
			self updateMonModele: aDrone]
]

{ #category : 'updating' }
UIDrone >> updateMonModele: aDrone [
	"on ne fait rien"
	"Ou on supprime les anciennes shapes"""
"  (self rsCanvas shapes reject:[:a| a = self carte]) do:[:aShape| self rsCanvas removeShape: aShape]."

"ou on maintient la liste des shapes"
|forme|
(self dictionnaire includesKey: aDrone) ifTrue:[	rsCanvas removeShape: (self dictionnaire at:aDrone)].

	"mais on cree les nouvelles formes pour les drones du cluster"

	 
		 
			forme := RSCircle new
				         radius: 20;
				         yourself.
			forme color: Color green.
			forme translateTo: aDrone position.
			self dictionnaire add: aDrone -> forme.
			self rsCanvas add: forme.
	"et on rafraichit"
	self rsCanvas invalidate
]

{ #category : 'updating' }
UIDrone >> updateMonModeleOld [
	"on ne fait rien"
	"Ou on supprime les anciennes shapes"""
"  (self rsCanvas shapes reject:[:a| a = self carte]) do:[:aShape| self rsCanvas removeShape: aShape]."

"ou on maintient la liste des shapes"
self dictionnaire valuesDo:[:aShape|
	rsCanvas removeShape: aShape].

	"mais on cree les nouvelles formes pour les drones du cluster"

	self model drones do: [ :aDrone |
			| forme |
			forme := RSCircle new
				         radius: 20;
				         yourself.
			forme color: Color green.
			forme translateTo: aDrone position.
			self dictionnaire add: aDrone -> forme.
			self rsCanvas add: forme ].
	"et on rafraichit"
	self rsCanvas invalidate
]

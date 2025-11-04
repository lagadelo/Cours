Class {
	#name : 'EtatAbstrait',
	#superclass : 'Object',
	#instVars : [
		'model'
	],
	#category : 'Cours - S2',
	#package : 'Cours - S2'
}

{ #category : 'accessing' }
EtatAbstrait class >> model: uneMeute [
"On garde le nom uneMeute pour une tracabilité, mais cela doit etre revu par la suite en aValue"
	| tmp |
	tmp := self new.
	tmp model: uneMeute.
	^ tmp
]

{ #category : 'adding' }
EtatAbstrait >> addDrone: aDrone [

	^ self subclassResponsibility
]

{ #category : 'accessing' }
EtatAbstrait >> model [

	^ model
]

{ #category : 'accessing' }
EtatAbstrait >> model: anObject [

	model := anObject
]

{ #category : 'instance creation' }
EtatAbstrait >> newIDFor: aDrone [

	^ self subclassResponsibility
]

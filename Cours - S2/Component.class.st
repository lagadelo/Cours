Class {
	#name : 'Component',
	#superclass : 'Object',
	#instVars : [
		'id',
		'meute'
	],
	#category : 'Cours - S2',
	#package : 'Cours - S2'
}

{ #category : 'memento' }
Component >> createMemento [

	^ Memento new setState: self
]

{ #category : 'accessing' }
Component >> id [

	^ id
]

{ #category : 'accessing' }
Component >> id: anObject [

	id := anObject
]

{ #category : 'accessing' }
Component >> meute [

	^ meute
]

{ #category : 'accessing' }
Component >> meute: anObject [

	meute := anObject
]

{ #category : 'accessing' }
Component >> poids [ 
^self subclassResponsibility 
]

{ #category : 'accessing' }
Component >> position [ 
^self subclassResponsibility 
]

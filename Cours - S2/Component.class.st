Class {
	#name : 'Component',
	#superclass : 'Object',
	#instVars : [
		'id'
	],
	#category : 'Cours - S2',
	#package : 'Cours - S2'
}

{ #category : 'accessing' }
Component >> id [

	^ id
]

{ #category : 'accessing' }
Component >> id: anObject [

	id := anObject
]

{ #category : 'accessing' }
Component >> poids [ 
^self subclassResponsibility 
]

{ #category : 'accessing' }
Component >> position [ 
^self subclassResponsibility 
]

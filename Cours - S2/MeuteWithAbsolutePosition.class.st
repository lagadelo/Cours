Class {
	#name : 'MeuteWithAbsolutePosition',
	#superclass : 'Meute',
	#instVars : [
		'position'
	],
	#category : 'Cours - S2',
	#package : 'Cours - S2'
}

{ #category : 'removing' }
MeuteWithAbsolutePosition >> moveBy: aPoint [

self drones do:[self drones moveBy: aPoint]
]

{ #category : 'accessing' }
MeuteWithAbsolutePosition >> position [
^position
]

{ #category : 'accessing' }
MeuteWithAbsolutePosition >> position: anObject [

	position := anObject
]

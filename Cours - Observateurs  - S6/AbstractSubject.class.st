Class {
	#name : 'AbstractSubject',
	#superclass : 'Object',
	#instVars : [
		'observateurs'
	],
	#category : 'Cours - Observateurs  - S6',
	#package : 'Cours - Observateurs  - S6'
}

{ #category : 'registering' }
AbstractSubject >> hasChanged: unSymbol [

	self observateurs do: [ :unObservateur |
		unObservateur subject: self update: unSymbol ]
]

{ #category : 'initialization' }
AbstractSubject >> initialize [ 

observateurs := OrderedCollection new.
]

{ #category : 'accessing' }
AbstractSubject >> observateurs [

	^ observateurs
]

{ #category : 'accessing' }
AbstractSubject >> observateurs: anObject [

	observateurs := anObject
]

{ #category : 'registering' }
AbstractSubject >> register: unObservateur [

	self observateurs add: unObservateur
]

{ #category : 'registering' }
AbstractSubject >> remove: unObservateur [

	self observateurs remove: unObservateur
]

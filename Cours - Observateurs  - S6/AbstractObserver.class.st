Class {
	#name : 'AbstractObserver',
	#superclass : 'Object',
	#instVars : [
		'sujet'
	],
	#category : 'Cours - Observateurs  - S6',
	#package : 'Cours - Observateurs  - S6'
}

{ #category : 'as yet unclassified' }
AbstractObserver >> follow: unSujet [

	unSujet register: self.
	sujet := unSujet
]

{ #category : 'as yet unclassified' }
AbstractObserver >> forget: unSujet [

	unSujet remove: self.
	sujet := nil.
]

{ #category : 'as yet unclassified' }
AbstractObserver >> subject: unSujet update: unSympbol [

^self subclassResponsibility 
]

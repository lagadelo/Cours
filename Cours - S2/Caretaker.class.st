Class {
	#name : 'Caretaker',
	#superclass : 'Object',
	#instVars : [
		'sauvegardes'
	],
	#category : 'Cours - S2',
	#package : 'Cours - S2'
}

{ #category : 'initialization' }
Caretaker >> ajouter: unMemento [

	sauvegardes add: unMemento
]

{ #category : 'initialization' }
Caretaker >> initialize [

	sauvegardes := OrderedCollection new
]

{ #category : 'initialization' }
Caretaker >> mementoAPosition: index [

	sauvegardes at: index
]

{ #category : 'initialization' }
Caretaker >> mementoCourant [

	^ sauvegardes last
]

{ #category : 'initialization' }
Caretaker >> oublierMementos: nombre [

	nombre timesRepeat: [ sauvegardes remove ]
]

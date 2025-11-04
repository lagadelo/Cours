Class {
	#name : 'EtatDeConfiance',
	#superclass : 'EtatAbstrait',
	#category : 'Cours - S2',
	#package : 'Cours - S2'
}

{ #category : 'adding' }
EtatDeConfiance >> addDrone: aDrone [

 
self model drones add: aDrone id -> aDrone.
aDrone meute: self model.
]

{ #category : 'instance creation' }
EtatDeConfiance >> newIDFor: aDrone [

	| id |
	id := 1.
	[ self model drones keys includes: id ] whileTrue: [ id := id + 1 ].

	^ id
]

{ #category : 'instance creation' }
EtatDeConfiance >> printString [

^'Je suis une meute dans un etat de confiance'
]

Class {
	#name : 'Meute',
	#superclass : 'Object',
	#instVars : [
		'id',
		'poids',
		'position',
		'drones',
		'nom'
	],
	#category : 'Cours - S2',
	#package : 'Cours - S2'
}

{ #category : 'adding removing' }
Meute >> addDrone: aDrone [

self drones add: aDrone id -> aDrone
]

{ #category : 'accessing' }
Meute >> drones [

	^ drones
]

{ #category : 'retreiving' }
Meute >> findDrone:anID [

^self drones at: anID
]

{ #category : 'accessing' }
Meute >> id [

	^ id
]

{ #category : 'accessing' }
Meute >> id: anObject [

	id := anObject
]

{ #category : 'initializing' }
Meute >> initialize [ 

drones := Dictionary new.

]

{ #category : 'accessing' }
Meute >> nom [

	^ nom
]

{ #category : 'accessing' }
Meute >> nom: anObject [

	nom := anObject
]

{ #category : 'accessing' }
Meute >> poids [

	^ poids
]

{ #category : 'accessing' }
Meute >> poids: anObject [

	poids := anObject
]

{ #category : 'accessing' }
Meute >> position [

	^ position
]

{ #category : 'accessing' }
Meute >> position: anObject [

	position := anObject
]

{ #category : 'adding removing' }
Meute >> removeDrone: aDrone [

self drones removeKey: aDrone id
]

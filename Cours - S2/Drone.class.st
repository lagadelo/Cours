Class {
	#name : 'Drone',
	#superclass : 'Object',
	#instVars : [
		'id',
		'poids',
		'position',
		'idMeute',
		'comportement',
		'nom'
	],
	#category : 'Cours - S2',
	#package : 'Cours - S2'
}

{ #category : 'accessing' }
Drone >> comportement [

	^ comportement
]

{ #category : 'accessing' }
Drone >> comportement: anObject [

	comportement := anObject
]

{ #category : 'execute' }
Drone >> execute [
	"je sais executer mon comportement"

 
]

{ #category : 'accessing' }
Drone >> id [

	^ id
]

{ #category : 'accessing' }
Drone >> id: anObject [

	id := anObject
]

{ #category : 'accessing' }
Drone >> idMeute [

	^ idMeute
]

{ #category : 'accessing' }
Drone >> idMeute: anObject [

	idMeute := anObject
]

{ #category : 'accessing' }
Drone >> nom [

	^ nom
]

{ #category : 'accessing' }
Drone >> nom: anObject [

	nom := anObject
]

{ #category : 'accessing' }
Drone >> poids [

	^ poids
]

{ #category : 'accessing' }
Drone >> poids: anObject [

	poids := anObject
]

{ #category : 'accessing' }
Drone >> position [

	^ position
]

{ #category : 'accessing' }
Drone >> position: anObject [

	position := anObject
]

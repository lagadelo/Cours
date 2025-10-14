Class {
	#name : 'Drone',
	#superclass : 'Component',
	#instVars : [
		'poids',
		'position',
		'comportement',
		'nom'
	],
	#category : 'Cours - S2',
	#package : 'Cours - S2'
}

{ #category : 'examples' }
Drone class >> ex1 [

|tmp|
tmp := self new.
tmp position:10@20.
tmp poids: 5.
tmp id: #toto.
^tmp 
]

{ #category : 'examples' }
Drone class >> ex2 [

|tmp|
tmp := self new.
tmp position:20@20.
tmp poids: 15.
tmp id: #titi.
^tmp 
]

{ #category : 'examples' }
Drone class >> ex3 [

|tmp|
tmp := self new.
tmp position:0@20.
tmp poids: 10.
tmp id: #tutu.
^tmp 
]

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

{ #category : 'testing' }
Drone >> isDrone [
^true
]

{ #category : 'testing' }
Drone >> isMeute [
^false
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

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
tmp comportement: [ :aValue| Transcript show: aValue printString; cr ].
^tmp 
]

{ #category : 'visiting' }
Drone >> accept: unVisiteur [

	unVisiteur visitDrone: self
]

{ #category : 'accessing' }
Drone >> comportement [

	^ comportement
]

{ #category : 'accessing' }
Drone >> comportement: anObject [

	comportement := anObject
]

{ #category : 'copying' }
Drone >> copy [ 
| tmp |
tmp := self class new.
tmp nom: self nom.
tmp poids: self poids.
tmp comportement: self comportement copy.
tmp id: self id.
"On ne copie pas la meute"




]

{ #category : 'execute' }
Drone >> execute [
	"je sais executer mon comportement"
	
	self comportement value: self 

 
]

{ #category : 'malicious access' }
Drone >> getIDWithoutJoining: composite [

	| unNouvelID |
	unNouvelID := composite newIDFor: self.
	id := unNouvelID +1. "ma variable privee avec une mauvaise valeur"
^self 
]

{ #category : 'accessing' }
Drone >> id: aValue [
"
^self error:'On ne supporte pas le changement une fois integre dans une meute'"
id := aValue 
]

{ #category : 'testing' }
Drone >> isDrone [
^true
]

{ #category : 'testing' }
Drone >> isMeute [
^false
]

{ #category : 'joining' }
Drone >> join [

^self join: Cluster new 

 


]

{ #category : 'joining' }
Drone >> join: composite [

	| unNouvelID |
	unNouvelID := composite newIDFor: self. "Ici on ne supporte plus le newID sans se présenter pour etre menorise dans le dictionaire prospect"
	id := unNouvelID. "ma variable privee"
	composite addDrone: self
]

{ #category : 'malicious access' }
Drone >> joinMalicious: composite [

	| unNouvelID |
	unNouvelID := composite newIDFor: self.
	id := unNouvelID +1. "ma variable privee avec une mauvaise valeur"
	composite addDrone: self
]

{ #category : 'moves' }
Drone >> moveBy: aPoint [

self position: self position + aPoint
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

{ #category : 'memento' }
Drone >> setMemento: unMemento [

"state := unMemento getState"

self position: unMemento position.
self id: unMemento id.
self comportement: unMemento comportement.
self nom: unMemento nom.
self poids: unMemento poids 




]

{ #category : 'as yet unclassified' }
Drone >> voisinsAUneDistanceDe: d [

	^ (self meute
		  dronesWithin:
		  (Rectangle origin: self position - d corner: position + d))
		  reject: [ :a | a == self ]
]

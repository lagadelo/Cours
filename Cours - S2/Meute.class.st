Class {
	#name : 'Meute',
	#superclass : 'Component',
	#instVars : [
		'drones',
		'nom'
	],
	#category : 'Cours - S2',
	#package : 'Cours - S2'
}

{ #category : 'examples' }
Meute class >> ex1 [ 
|tmp|

tmp:= self  new.
tmp id: 23.
tmp addDrone: Drone ex1.
tmp addDrone: Drone ex2.
^tmp.
]

{ #category : 'adding removing' }
Meute >> addDrone: aDrone [

self drones add: aDrone id -> aDrone.
aDrone meute: self id.
]

{ #category : 'accessing' }
Meute >> drones [

	^ drones
]

{ #category : 'retreiving' }
Meute >> findDrone:anID [

^self drones at: anID
]

{ #category : 'initializing' }
Meute >> initialize [ 

drones := Dictionary new.

]

{ #category : 'testing' }
Meute >> isDrone [ 

^false
]

{ #category : 'testing' }
Meute >> isMeute [

	^ true
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

	|p|
	
	p := 0.
	
	
	self drones do:[:a| p := p +a poids].
	^p
]

{ #category : 'accessing' }
Meute >> position [ 
^self computePosition
]

{ #category : 'adding removing' }
Meute >> removeDrone: aDrone [

self drones removeKey: aDrone id
]

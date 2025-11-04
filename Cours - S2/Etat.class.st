Class {
	#name : 'Etat',
	#superclass : 'Component',
	#instVars : [
		'prospects',
		'model'
	],
	#category : 'Cours - S2',
	#package : 'Cours - S2'
}

{ #category : 'accessing' }
Etat class >> model: uneMeute [
"On garde le nom uneMeute pour une tracabilité, mais cela doit etre revu par la suite en aValue"
	| tmp |
	tmp := self new.
	tmp model: uneMeute.
	^ tmp
]

{ #category : 'adding' }
Etat >> addDrone: aDrone [

id := self.

((self findProspect: aDrone) = aDrone id ) ifFalse:[  Exception  signal: 'Spoofing'].
self model drones add: (self findProspect: aDrone) -> aDrone.
aDrone meute: self id.
]

{ #category : 'adding drones' }
Etat >> addProspect: anAssociation [

	prospects add: anAssociation
]

{ #category : 'adding drones' }
Etat >> findProspect: aKey [

"aKey =  drone"
^prospects at: aKey ifAbsent:[self error: 'Unknown drone'] 
]

{ #category : 'initialization' }
Etat >> initialize [

	prospects := Dictionary new
]

{ #category : 'accessing' }
Etat >> model [

	^ model
]

{ #category : 'accessing' }
Etat >> model: anObject [

	model := anObject
]

{ #category : 'adding drones' }
Etat >> newIDFor: aDrone [

id := 1.
	[
	(self model drones keys includes: id) and: [ prospects keys includes: id ] ]
		whileTrue: [ id := id + 1 ].
	self addProspect: aDrone -> id.
	^ id
]

{ #category : 'printing' }
Etat >> printString [
]

{ #category : 'accessing' }
Etat >> prospects [

	^ prospects
]

{ #category : 'accessing' }
Etat >> prospects: anObject [

	prospects := anObject
]

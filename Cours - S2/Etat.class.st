Class {
	#name : 'Etat',
	#superclass : 'EtatAbstrait',
	#instVars : [
		'prospects'
	],
	#category : 'Cours - S2',
	#package : 'Cours - S2'
}

{ #category : 'adding' }
Etat >> addDrone: aDrone [



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

{ #category : 'adding drones' }
Etat >> newIDFor: aDrone [
|id|
id := 1.
	[
	(self model drones keys includes: id) and: [ prospects keys includes: id ] ]
		whileTrue: [ id := id + 1 ].
	self addProspect: aDrone -> id.
	^ id
]

{ #category : 'printing' }
Etat >> printString [

^'Je suis une meute dans un etat de defiance'
]

{ #category : 'accessing' }
Etat >> prospects [

	^ prospects
]

{ #category : 'accessing' }
Etat >> prospects: anObject [

	prospects := anObject
]

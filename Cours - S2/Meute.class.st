Class {
	#name : 'Meute',
	#superclass : 'Component',
	#instVars : [
		'drones',
		'nom',
		'i',
		'prospects',
		'etat'
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

{ #category : 'examples' }
Meute class >> ex2 [ 
|tmp|

tmp:= self  new.
tmp id: 23.
tmp addDrone: Drone ex3.
tmp addDrone: self ex1.
^tmp.
]

{ #category : 'browser state' }
Meute >> ChangeEtatEn: unEtat [

etat := unEtat
]

{ #category : 'etat' }
Meute >> aConfiance [

self etat: (EtatDeConfiance model:self)
]

{ #category : 'adding removing' }
Meute >> addDrone: aDrone [

"id := self.

((self findProspect: aDrone) = aDrone id ) ifFalse:[  Exception  signal: 'Spoofing'].
self drones add: (self findProspect: aDrone) -> aDrone.
aDrone meute: self id."
^self etat addDrone:aDrone 
]

{ #category : 'accessing' }
Meute >> computePosition [

|p nP|
p := 0@0.
self drones do:[:aDrone | 
	p := p + (aDrone position * aDrone poids)].
nP := (p / self poids).
^ nP x asFloat @nP y asFloat

]

{ #category : 'testing' }
Meute >> contains: element [

^self drones values includes: element
]

{ #category : 'accessing' }
Meute >> drones [

	^ drones
]

{ #category : 'accessing' }
Meute >> etat [

	^ etat
]

{ #category : 'accessing' }
Meute >> etat: anObject [

	etat := anObject
]

{ #category : 'retreiving' }
Meute >> findDrone:anID [

^self drones at: anID
]

{ #category : 'adding removing' }
Meute >> initialize [

super initialize.
"prospects := Dictionary new." "Cela est maintenant de la responsabilité de l'etat"
self etat: (Etat model: self). "On initialize l'etat qui connait le modèle"
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

{ #category : 'retreiving' }
Meute >> knows: aDrone [

^drones values includes: aDrone
]

{ #category : 'etat' }
Meute >> naPasConfiance [

self etat: (Etat model:self)
]

{ #category : 'adding removing' }
Meute >> newID [
" on interdir l'obtention d'ID sans être identifié"

^self error:'Il faut etre identifie. Use newIDFor: instead'
]

{ #category : 'adding removing' }
Meute >> newIDFor: aDrone [
	" On recupere un ID unique"

"	id := 1.
	[
	(self drones keys includes: id) and: [ prospects keys includes: id ] ]
		whileTrue: [ id := id + 1 ].
	self addProspect: aDrone -> id.
	^ id"
	
self etat newIDFor:aDrone
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
^self subclassResponsibility 
]

{ #category : 'adding removing' }
Meute >> removeDrone: aDrone [

self drones removeKey: aDrone id
]

{ #category : 'retreiving' }
Meute >> size [

^drones associations size
]

"
Classe abstraite pour servir de visiteur
"
Class {
	#name : 'MonVisiteur',
	#superclass : 'Object',
	#category : 'Cours - Visiteurs - S6',
	#package : 'Cours - Visiteurs - S6'
}

{ #category : 'exemples' }
MonVisiteur class >> exemple [

	| meute d1 d2 |
	meute := CentralizedDroneMeuteFactory newMeute.
	d1 := Drone ex1.
	d2 := Drone ex2.
	meute
		addDrone: d1;
		addDrone: d2.
	^ meute
]

{ #category : 'exemples' }
MonVisiteur class >> exemple2 [

	| meute d1 d2 |
	meute := CentralizedDroneMeuteFactory newMeute.
	d1 := Drone ex1.
	d2 := Drone ex2.
	meute
		addDrone: d1;
		addDrone: d2.
		meute drones add:#casImprevu -> (RSCircle new radius: 10 ).
	^ meute
]

{ #category : 'as yet unclassified' }
MonVisiteur >> visieCluster: unCluster [

	^ self subclassResponsibility
]

{ #category : 'as yet unclassified' }
MonVisiteur >> visieDrone: unDrone [

^self subclassResponsibility 
]

{ #category : 'as yet unclassified' }
MonVisiteur >> visieMeute: uneMeute [

	^ self subclassResponsibility
]

{ #category : 'visiting' }
MonVisiteur >> visit: anObject [

^anObject accept: self 
]

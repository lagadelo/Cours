Class {
	#name : 'MonVisiteurAffichage',
	#superclass : 'MonVisiteur',
	#category : 'Cours - Visiteurs - S6',
	#package : 'Cours - Visiteurs - S6'
}

{ #category : 'visiting' }
MonVisiteurAffichage >> visitBoundingShape: anObject [

Transcript show: anObject className 
]

{ #category : 'visiting' }
MonVisiteurAffichage >> visitCluster: unCluster [

Transcript show: 'Je suis le cluster (unique) :'.
self visitMeute: unCluster
]

{ #category : 'visiting' }
MonVisiteurAffichage >> visitDrone: unDrone [

	Transcript
		show: 'Drone positionne à:' , unDrone position printString;
		cr
]

{ #category : 'visiting' }
MonVisiteurAffichage >> visitMeute: uneMeute [

uneMeute drones values do:[:unSousElement| self visit: unSousElement ]
]

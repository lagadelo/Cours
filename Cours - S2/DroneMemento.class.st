Class {
	#name : 'DroneMemento',
	#superclass : 'Memento',
	#category : 'Cours - S2',
	#package : 'Cours - S2'
}

{ #category : 'as yet unclassified' }
DroneMemento >> setState: unDrone [


| tmp |
tmp := unDrone class new.

tmp nom:  unDrone nom.
tmp position: unDrone position.
tmp poids: unDrone poids.
tmp comportement: unDrone comportement copy.

archive:= tmp 

]

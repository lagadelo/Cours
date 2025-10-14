Class {
	#name : 'DroneWithRelativePosition',
	#superclass : 'Drone',
	#category : 'Cours - S2',
	#package : 'Cours - S2'
}

{ #category : 'positioning' }
DroneWithRelativePosition >> realPosition [ 

^self meute position + self position
]

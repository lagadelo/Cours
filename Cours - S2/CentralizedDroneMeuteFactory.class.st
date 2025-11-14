Class {
	#name : 'CentralizedDroneMeuteFactory',
	#superclass : 'DroneMeuteFactory',
	#category : 'Cours - S2',
	#package : 'Cours - S2'
}

{ #category : 'instanc creation' }
CentralizedDroneMeuteFactory class >> droneFactory [ 
^DroneWithRelativePosition 
]

{ #category : 'instanc creation' }
CentralizedDroneMeuteFactory class >> meuteFactory [ 
^MeuteWithAbsolutePosition 
]

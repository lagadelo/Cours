Class {
	#name : 'CentralizedFileHeaderSignature',
	#superclass : 'DroneMeuteFactory',
	#category : 'Cours - S2',
	#package : 'Cours - S2'
}

{ #category : 'instanc creation' }
CentralizedFileHeaderSignature class >> MeuteFactory [ 
^MeuteWithAbsolutePosition 
]

{ #category : 'instanc creation' }
CentralizedFileHeaderSignature class >> droneFactory [ 
^DroneWithRelativePosition 
]

Class {
	#name : 'DroneMeuteFactory',
	#superclass : 'Object',
	#category : 'Cours - S2',
	#package : 'Cours - S2'
}

{ #category : 'instanc creation' }
DroneMeuteFactory class >> droneFactory [ 

^self subclassResponsibility 

]

{ #category : 'instanc creation' }
DroneMeuteFactory class >> meuteFactory [ 

^self subclassResponsibility 

]

{ #category : 'instanc creation' }
DroneMeuteFactory class >> newDrone [

^self droneFactory new
]

{ #category : 'instanc creation' }
DroneMeuteFactory class >> newMeute [

^self meuteFactory new
]

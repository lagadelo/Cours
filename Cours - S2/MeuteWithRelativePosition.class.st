Class {
	#name : 'MeuteWithRelativePosition',
	#superclass : 'Meute',
	#category : 'Cours - S2',
	#package : 'Cours - S2'
}

{ #category : 'positioning' }
MeuteWithRelativePosition >> computePosition [

|p nP|
p := 0@0.
self drones do:[:aDrone | 
	p := p + (aDrone position * aDrone poids)].
nP := (p / self poids).
^ nP x asFloat @nP y asFloat

]

{ #category : 'positioning' }
MeuteWithRelativePosition >> position [ 
^self computePosition

]

{ #category : 'positioning' }
MeuteWithRelativePosition >> position: aValue [ 
^self error 
]

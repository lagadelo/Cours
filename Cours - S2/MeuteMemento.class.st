Class {
	#name : 'MeuteMemento',
	#superclass : 'Memento',
	#category : 'Cours - S2',
	#package : 'Cours - S2'
}

{ #category : 'as yet unclassified' }
MeuteMemento >> getState [
	"On modifier les drones de l'archites (qui etaient de mementos de drones"

	archive drones: (archive drones collect: [ :a |
				 | b |
				 b := a getState. " On restaure le drone"
				 b meute: archive. "On positionne sa meute. Le lien avait été coupé pour éviter les problèmes de circularité"
				 b "a la fin du collect, on revoit bien le drone restauré" ]).
	^ archive
]

{ #category : 'initialization' }
MeuteMemento >> setState: uneMeute [

	| tmp |
	tmp := Meute class new.
	tmp nom: uneMeute nom.
	tmp drones: (uneMeute drones collect: [ :a |
				 a meute: nil. "On supprime le lien vers la meute pour empecher les problemes de circularité"
				 a createMemento "On crée le memento des drones" ]).


	archive := tmp
]

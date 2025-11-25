Class {
	#name : 'ObservateurConcretPourUI',
	#superclass : 'AbstractObserver',
	#instVars : [
		'interfaceGraphique'
	],
	#category : 'Cours - Observateurs  - S6',
	#package : 'Cours - Observateurs  - S6'
}

{ #category : 'as yet unclassified' }
ObservateurConcretPourUI class >> follow: anObject [

| tmp |
tmp := self new follow: anObject for: UIDrone new.
tmp interfaceGraphique open.
]

{ #category : 'as yet unclassified' }
ObservateurConcretPourUI >> follow: unSujet for: aClient [
	"je suis l'observateur de unSujet"

	self follow: unSujet.
	"le modele du client est le sujet"
	aClient model: unSujet.
	"l'interface graphique est mémoriée"
	self interfaceGraphique: aClient
]

{ #category : 'accessing' }
ObservateurConcretPourUI >> interfaceGraphique [

	^ interfaceGraphique
]

{ #category : 'accessing' }
ObservateurConcretPourUI >> interfaceGraphique: anObject [

	interfaceGraphique := anObject
]

{ #category : 'as yet unclassified' }
ObservateurConcretPourUI >> subject: unSujet update: unObjet [

	"update est une version sommaire, on ne cherche pas a connaite le champ qui a changé"
	"self interfaceGraphique updateMonModele "
	self interfaceGraphique updateMonModele:unObjet 
]

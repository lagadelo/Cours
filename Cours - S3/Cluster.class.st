Class {
	#name : 'Cluster',
	#superclass : 'Meute',
	#classVars : [
		'UniqueInstance'
	],
	#category : 'Cours - S3',
	#package : 'Cours - S3'
}

{ #category : 'instance creation' }
Cluster class >> destroyInstance [

	 UniqueInstance := nil
]

{ #category : 'instance creation' }
Cluster class >> new [

	^ UniqueInstance
		  ifNil: [ UniqueInstance := super new ]
		  ifNotNil: [ UniqueInstance ]
]

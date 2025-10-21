Class {
	#name : 'TestDrone',
	#superclass : 'TestCase',
	#category : 'Cours - S3',
	#package : 'Cours - S3'
}

{ #category : 'testing' }
TestDrone >> testCreationCluster [

self should: [Cluster new] raise: Error
]

{ #category : 'testing' }
TestDrone >> testMultipleCreationCluster [

|nb|
Cluster destroyInstance.
nb  := Cluster allInstances size .
	100 timesRepeat: [ Cluster uniqueInstance ].
	^ self assert: Cluster allInstances size = (nb + 1)

	"Ou"
	"^ self deny: (Cluster allInstances size > 1)"
]

{ #category : 'testing' }
TestDrone >> testUnicityCreationCluster [

	Cluster destroyInstance.


	^ self assert: Cluster uniqueInstance == Cluster uniqueInstance

	"Ou"
	"^ self deny: (Cluster allInstances size > 1)"
]

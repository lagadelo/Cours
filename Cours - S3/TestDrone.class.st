Class {
	#name : 'TestDrone',
	#superclass : 'TestCase',
	#category : 'Cours - S3',
	#package : 'Cours - S3'
}

{ #category : 'testing' }
TestDrone >> testAddDrone [
| d nb|
	Cluster destroyInstance.
	nb := Cluster new drones size.
	d := Drone new.
	
	Cluster new addDrone: d.
	
	self assert: Cluster new drones size = (nb +1).
	self assert: (Cluster new drones includes: d)
 
]

{ #category : 'testing' }
TestDrone >> testAddDroneInCluster [
| d nb m |
	m := Cluster new.
	nb := m drones size.
	self assert: (m drones isEmpty).
	d := Drone new.
	
	d join.
	self deny:   d id isNil.
	self assert: (m drones size = (nb +1)).
	self assert: (m findDrone: d id) == d.
	 
 
]

{ #category : 'testing' }
TestDrone >> testAddDroneInMeute [
| d nb m |
	m := Meute new.
	nb := m drones size.
	self assert: (m drones isEmpty).
	d := Drone new.
	
	d join:m.
	self deny:   d id isNil.
	self assert: (m drones size = (nb +1)).
	self assert: (m findDrone: d id) == d.
	 
 
]

{ #category : 'testing' }
TestDrone >> testClusterAsDrone [

	Cluster destroyInstance.


	^ self deny: Cluster new isDrone

	"Ou"
	"^ self deny: (Cluster allInstances size > 1)"
]

{ #category : 'testing' }
TestDrone >> testClusterAsMeute [

	Cluster destroyInstance.


	^ self assert: Cluster new isMeute

	"Ou"
	"^ self deny: (Cluster allInstances size > 1)"
]

{ #category : 'testing' }
TestDrone >> testIDModification [

^self should:[Drone new id:1] raise:Error
]

{ #category : 'testing' }
TestDrone >> testIntrusion [

 
self should:[ Drone new joinMalicious: Cluster new] raise:Error
 
]

{ #category : 'testing' }
TestDrone >> testIntrusion2 [

| d1 d2 nb |
nb := Cluster new  size.
d1 := Drone new.
d2 := Drone new.
Cluster new newIDFor: d1.
Cluster new newIDFor: d2.
Cluster new addDrone: d2.
Cluster new addDrone: d1.
 
self deny:[Cluster new knows: d2].
self assert:[Cluster new knows: d1].

"Ou compter le nombre d'associations"

 

 
]

{ #category : 'testing' }
TestDrone >> testMultipleCreationCluster [

|nb|
Cluster destroyInstance.
nb  := Cluster allInstances size .
	100 timesRepeat: [ Cluster new ].
	^ self assert: Cluster allInstances size = (nb + 1)

	"Ou"
	"^ self deny: (Cluster allInstances size > 1)"
]

{ #category : 'testing' }
TestDrone >> testUnicityCreationCluster [

	Cluster destroyInstance.


	^ self assert: Cluster new == Cluster new

	"Ou"
	"^ self deny: (Cluster allInstances size > 1)"
]

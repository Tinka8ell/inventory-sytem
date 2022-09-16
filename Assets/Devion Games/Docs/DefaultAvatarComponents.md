# Default Avatar Components

Understanably this is a complicated object.
We can seperate out the "Unity" stuff, the controller stuff and the inventory stuff.

## Contains:
[Default Avatar](DefaultAvatarComponentsInspector.png):
* Transform - Unity standard for gameObject
* Animator - Unity standard - 
links Third Person Controller.controller and DefaultAvatar.avatar's Avatar
* Rigidbody - Unity standard (set with no rotation in X, Y & Z)
* Capsule Collider - Unity standard - simple collider for the player
* Third Person Controller (Script) - probably motion / interaction controller
* Character IK (Script) - gives some "life" to the avatar
* Equipment Handler (Script) - how we handle equipment!
* Selection Handler (Script) - how we handle "selection"?
* Single Instance (Script) - standard "singleton" code
* Audio Event Listener (Script) - I guess helps us "hear" sounds around the player
* Stats Handler (Script) - how we handle stats!


## What is it?
* a lot of standard stuff
* a load of specific stuff to support the inventory
  * Equipment Handler
  * Selection Handler
  * Stats Handler

## Significant dependant objects
* Third Person Controller
* Character IK
* [Equipment Handler](EquipmentHandler.md)
* [Selection Handler](SelectionHandler.md)
* [Stats Handler](StatsHandler.md)

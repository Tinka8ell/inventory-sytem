# [Main Game Scene](Screenshots/MainSceneScreenshot.png)

There is a lot in here, and most of it is "fluff".
Ok, it is all important as an example, 
but most is a distraction from isolating key objects.

## Contains:
Main Scene (From: Assets/Devion Games/Inventory System/Examples/Scenes)
* UI
* Default Avatar
* EventSystem
* Third Person Camera
* Enviroment
* Resources
* Items
* Dummy
* Dummy
* Triggers
* Ladder Trigger
* Pushable Object
* Directional Light
* Music
* Inventory Manager
* Stat Manager

## What is important
* UI - where all the UI lives - important
* Default Avatar - the "player" - important
* EventSystem - Unity standard - used by UI (usually)
* Third Person Camera - looks at and follows player - less important to the key objects
* Triggers - um! things the player reacts to? - probably important
* Directional Light - Unity standard - general illumiation
* Music - sound effects? - important for the game, but probabaly not for the key objects
* Inventory Manager - key - already looked at as pure code
* Stat Manager - key - already looked at as pure code

Fluff - bunch of things to iteract with, but will contain what makes them interactable:
* Enviroment
* Resources
* Items
* Dummy
* Dummy
* Ladder Trigger
* Pushable Object

## Significant dependant GameObjects
* [UI](UIGameobjects.md)
* [Third Person Controller](ThirdPersonControllerGameobjects.md) - "Player"
  * Default Avatar
  * Third Person Camera 
* Inventory Manager
* Stat Manager
* Triggers, Resources, Items

## Linking
There are multiple ways things are linked together.
* Tags -  found by GetObjectByTag()
  * Default Avatar - "Player"
  * Third Person Camera - "MainCamera"
* Singltons - found by 

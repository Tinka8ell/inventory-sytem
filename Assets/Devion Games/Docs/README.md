# An understanding of Devion Games' Inventory System

## Plan A

There seem to be many parts:
* Inventory System
* Third Person Controller
* Stat System
* Module Manger
* A bunch of Utilities and Assets to support the above and examples
* In amongs the above are examples, so need to clarify 
what is required and what is used to demonstrate and what is good pactice

So looking at Inventory and Stat Systems has given some structure, 
but not a clue how it works, or links together.  So Plan B ...

## Plan B
* Take some working Unity Scene and find out what the GameObjects are
  * So that means graphing the children
  * And graphing the Components
* Use the graph to find the key objects
* The players components and how they are set up is opening some clues - yeah!

### Main Scene
* [Top-level GameObjects](MainGameScene.md)
  * [UI GameObjects](UIGameobjects.md)
  * [Third Person Controller GameObjects](ThirdPersonControllerGameobjects.md)

# Findings:

## Inventory System

### Assumtions:
* Editor scripts are to make access to the Runtime objects easier in Unity
* Runtime scripts are the main structure

### Parts

* Game state is held in the [InventoryManager](InventoryManager.md)
  * Using [ItemDatabase](ItemDatabase.md) to hold the data 
  * including [Settings](Settings.md)
* [EquipmentHandler](EquipmentHandler.md)

## Stat System

### Parts

* Player "state" held by [StatSystem](StatSystem.md)

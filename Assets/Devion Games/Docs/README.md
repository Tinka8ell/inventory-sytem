# An understanding of Devion Games' Inventory System

There seem to be many parts:
* Inventory System
* Third Person Controller
* Stat System
* Module Manger
* A bunch of Utilities and Assets to support the above and examples
* In amongs the above are examples, so need to clarify 
what is required and what is used to demonstrate and what is good pactice

## Inventory System

### Assumtions:
* Editor scripts are to make access to the Runtime objects easier in Unity
* Runtime scripts are the main structure

### Parts

* Game state is held in the [InventoryManager](InventoryManager.md)
  * Using [ItemDatabase](ItemDatabase.md) to hold the data 
  * including [Settings](Settings.md)
* Player "state" held by [StatSystem](StatSystem.md)
* [EquipmentHandler](EquipmentHandler.md)
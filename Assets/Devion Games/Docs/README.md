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

## Plan C
* Look through the [Tools > Devion Games](ToolsDevionGames.md)

## Plan D
* Generate som UML to help get an understanding
* [CSharp to PlantUML](https://marketplace.visualstudio.com/items?itemName=pierre3.csharp-to-plantuml) 
by [pierre3](https://marketplace.visualstudio.com/publishers/pierre3) 
with [GitHub repository](https://github.com/pierre3/PlantUmlClassDiagramGenerator) can do this
  * Except it can't on Linux! - issue with dotnet version (requires 5 and only 6 available! - oops!)
  * It will run on Windows, so generated the full CSharp -> UML for all files in the repository
  * After looking at them, I then regenerated wirh only public methods and fields
* There is a [PlantUML](https://marketplace.visualstudio.com/items?itemName=jebbs.plantuml) plug-in 
to veiw and edit and generate diagrams
* CSharp to PlantUML only generates one file for each CSharp file
  * Wrote my own [script](../../../puml-gen-inc.sh) to recursively generate a "dirInclude.puml" files 
to include everything at that level and below in the directory stucture
* Generated some UML diagrams starting at [Inventory System](UMLInventorySystem.md)
  * They are not simple
  * Difficult to see the wood for the trees!
* Next, plan to generate simplified diagrams
  * [Simple Inventory System UML](SimpleUMLInventorySystem.md)
  * [Simple Inventory Manager UML](SimpleUMLInventoryManager.md)

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

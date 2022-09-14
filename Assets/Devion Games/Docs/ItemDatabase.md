# ItemDatabase

ItemDatabase is only important in that it contains the state of the game

## Contains:
* Lists:
  * items of Item
  * currencies of Currency
  * craftingRecipes of CraftingRecipe
  * Rarity> raritys of Rarity
  * categories of Category
  * equipments of EquipmentRegion
  * itemGroups of ItemGroup
  * settings of Configuration.Settings
* accessors:
  * GetItemPrefab(name)
    * returns Prefab linked to the named item
  * GetItemGroup(name) 
    * returns first ItemGroup matching name

## What is it?
* little more than an instantiated list of INameable "things" 

## Significant dependant objects
* Item
  * Currency
  * UsableItem
    * UsableItem
    * EquipmentItem
* Configuration.Settings
  * Default
  * Input
  * Notifications
  * SavingLoading
  * UI
* Category
* CraftingRecipe
* EquipmentRegion
* ItemGroup
* Rarity


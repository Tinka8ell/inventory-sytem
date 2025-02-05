# EquipmentHandler

Seems a significant object to do with instantiating "Visible Items"
and moving them to and from ItemContainers.
From the [Default Avatar](Screenshots/DAEquipementHandler.png)
we can get some idea of how it is supposed to be used.

## Contains:
* [Bones](Screenshots/DAEquipementHandlerBones.png) - a List of EquipmentBone
  * List of bones seems to be taken from the database (in the Inventoymanager?)
  * Intersetingly, only 2 are defined in the working example:
    * Right Hand Items
    * left hand Items
  * These are "extra" "null" (zero Transform) bones in the respective hands
  * So the "hand bones" tak us to where the fingers are mounted 
  and this placement is at that point
* [VisibleItems](Screenshots/DAEquipementHandlerItems.png) - a List of VisibleItem
  * This is prefilled
  * Does it list the itmes we can hold?
* Refs:
  * m_WindowName = "Equipment"
  * m_Database (ItemDatabase)
  * m_EquipmentContainer (ItemContainer)

## What is it?
* When it starts
  * finds m_EquipmentContainer using WidgetUtility.Find<ItemContainer>
    * I am guessing this finds the relevant object (need to explore)
    * Adds listeners for OnAddItem and OnRemoveItem which do UpdateEquipment on the item invovled
  * and uses it to UpdateEquipment?
* EquipItem(EquipmentItem) & UnEquipItem(EquipmentItem)
* GetBone(EquipmentRegion) returns the Transform of the bone (GameObject) linked to the EquipmentRegion

## Significant dependant objects
* EquipmentBone - EquipmentRegion / GameObject(bone) pair
* [VisibleItem](VisibleItem.md)
* [ItemDatabase](ItemDatabase.md)
* ItemContainer - part of the UI
* [WidgetUtility](WidgetUtility.md)

## Analysis

### class EquipmentHandler
* No direct interaction with Input Manager
* Extends MonoBehaviour
* Fields
  * WindowName(string) defaults to "Equipment"
  * ItemDatabase - set in Editor
  * Bones List of EquipmentBone
  * VisibleItems List of VisibleItem marked disabled at Start()
  * ItemContainer found by WindowName using WidgetUtility at Start()
* Mathods
  * Start
    * add OnAddItem() to ItemContainer.OnAddItem listener
    * add OnRemoveItem() to ItemContainer.OnRemoveItem listener
    * call UpdateEquipment()
    * if InventoryManager has current AddListener to onDataLoaded event to UpdateEquipment()
  * OnAddItem(Item, Slot)
    * if Item is EquipmentItem, call EquipItem(EquipmentItem)
  * OnRemoveItem(Item, amount, Slot)
    * if Item is EquipmentItem, call UnEquipItem(EquipmentItem)
  * EquipItem(EquipmentItem)
    * for each ObjectProperty in EquipmentItem Properties
      * if numeric property, call SendMessage("AddModifier" with suitable object)
    * for the matching VisibleItems call OnItemEquip(EquipmentItem)
    * else create one and call OnItemEquip(EquipmentItem)
  * UnEquipItem(EquipmentItem)
    * for each ObjectProperty in EquipmentItem Properties
      * if numeric property, call SendMessage("RemoveModifiersFromSource" with suitable object)
    * for the matching VisibleItems call OnItemUnEquip(EquipmentItem)
  * UpdateEquipment
    * for each VisibleItems call OnItemUnEquip(it's item)
    * for each EquipmentItem in ItemContainer call EquipItem()
  * GetBone(EquipmentRegion) find matching bone's Transform from Bones

## class EquipmentBone{
* Fields
  * EquipmentRegion
  * GameObject of that bone
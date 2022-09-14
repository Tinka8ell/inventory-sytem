# EquipmentHandler

Seems a significant object to do with instantiating "Visible Items"
and moving them to and from ItemContainers

## Contains:
* Bones - a List of EquipmentBone
* VisibleItems - a List of VisibleItem
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

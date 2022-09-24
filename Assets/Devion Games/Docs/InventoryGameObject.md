# [Inventory GameObject](InventoryGameObject.png)

This is a Prefab.

## Contains:

* Inventory - ItemContainer.cs & ItemCollection.cs
  * Background
  * Background Outline
  * Header
    * Title
    * Close -> ItemContainer.cs
  * Slots
    * [Rounded Grid Slot](#rounded-grid-slot)
    * Rounded Grid Slot (1-20) are [Rounded Grid Slot](#rounded-grid-slot)s
  * Currency is just a [Currency Container](./CommonUIGameObjects.md#currency-container)
  * Drag Handle

## What is it?

A UI GameObject to represent an Inventory with title, slots and currency.

## Significant dependant GameObjects

### Rounded Grid Slot
Is an [Item Slot](./CommonUIGameObjects.md#item-slot) whose Icon has been extended with:
* Icon:
  * Background
  * Mask
    * Image
  * Outline
And has:
* Cooldown - CooldownItemView.cs
  * Cooldown Overlay
  * Cooldown Timer

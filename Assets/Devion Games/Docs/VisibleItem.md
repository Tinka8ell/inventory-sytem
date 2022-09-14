# VisibleItem

The heart of what EquipmentHandler works with.
It's a CallbackHandler defining: "OnEquip" and "OnUnEquip".
Base class for all VisibleItems, see below.

## Contains:
* item - Item
* attachments - Attachment[]
  * the heart of our [EquipmentHandler](EquipmentHandler.md) instantiating us
* m_Handler - our [EquipmentHandler](EquipmentHandler.md) 
* m_CharacterAnimator - our parent's Animator
* m_CharacterColliders - Collider[] of our children's Colliders
* m_Camera - the main Camera 
* m_CameraTransform - Transform of the main Camers
* m_CurrentEquipedItem Item 

## What is it?
* The callback mechanism for [EquipmentHandler](EquipmentHandler.md) 
to Equip and UnEquip a "Visible Item".

## Significant dependant objects
* [EquipmentHandler](EquipmentHandler.md)
* Attachment contains:
  * region - EquipmentRegion 
  * prefab - GameObject 
  * position - Vector3 
  * rotation - Vector3 
  * scale - Vector3 default: Vector3.one
  * gameObject - GameObject (hidden)
* sub classes:
  * StaticItem
  * Weapon
   * MeleeWeapon
   * ShootableWeapon

# [Genaral UI Game Object](./GenaralUIGameObject.png)

This Prefab "holds" a number of overlays which are all Prefabs.

## Contains:

* Genaral UI
  * [Floating UI](#floating-ui)
  * [Notification](#notification)
  * [Tooltip](#tooltip)
  * UICursor
  * [Context Menu](#context-menu)
    * Menu Item
  * [Menu Tooltip](#menu-tooltip)
  * [Progressbar](#progressbar)
  * [Dialog Box](#dialog-box)
  * [Stack](#stack)
  * [Trigger Tooltip](#trigger-tooltip)

## What is it?

Basically a bunch of Prefabs of Prefabs of UI elelments.
It is all UI related and not directly inventory related.
Of couse it is used by the inventory and other bots of the UI to display stuff.

## Significant dependant GameObjects

### Floating UI
Has:
* Floating Renderer - FloatingTextManager.cs
  * Text Slot - FloatingText.cs

### Notification
Has Notification.cs and:
* ScrollView
  * VerticalLayout
    * Slot - NotificationSlot.cs
      * Time
      * Icon
      * Text

### Tooltip 
Is a [Tooltip UI Element](CommonUIGameObjects.md#tooltip-ui-element) and:
* Price is a [Currency Container](./CommonUIGameObjects.md#currency-container) with PriceItem.cd

### Context Menu 
Has ContextMenu.cs and:
* Menu Item - MenuItem.cs
  * Text
  * Outline

# Menu Tooltip
Is just a [Tooltip UI Element](CommonUIGameObjects.md#tooltip-ui-element).

### Progressbar
Has Progressbar.cs and:
* Value
* Shadow
* Title

### Dialog Box
Has DialogBox.cs and:
* Background
* Header
  * Title
* Content
  * Center
    * Slot
      * Outline
      * Icon
    * Text
* HorizontalLayout
  * Button
    * Text
* Drag Panel

### Stack
Has Stack.cs, Spinner.cs and:
* Outline
* Amount
  * Decrease -> Spinner.cs
    * Image
  * Input field
    * Text
  * Increase -> Spinner.cs
    * Image
    * Image (1)
* Unstack -> Stack.cs
  * Outline
  * Background
  * Text
* Cancel -> Stack.cs
  * Outline
  * Background
  * Text

### Trigger Tooltip
Has TriggerTooltip.cs and:
* Title
* F
  * Shadow
  * Outline
  * Text
* Instruction

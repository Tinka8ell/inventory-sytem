# Common UI Game Objects

This are generic bits used in other UI Game Objects.

## Contains:

### Currency Container
Has:
* Gold is a [Currency Slot](#currency-slot)
* Silver is a [Currency Slot](#currency-slot)
* Copper is a [Currency Slot](#currency-slot)

### Currency Slot
Has is an [Item Slot](#item-slot) with CurrencySlot.cs

### Item Slot
Has:
* Icon - IconItemView.cs
* Amount - StackItemView.cs

### Tooltip UI Element
Has Tooltip.cs and:
* Background
  * Outline
* Horizontal Layout
  * Icon Slot
    * Background
    * Icon
    * Outline
  * VerticalLayout
    * Title
    * Text
* Pairs
  * Seperator
  * String Pair
    * Name
    * Value

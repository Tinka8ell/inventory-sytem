# Item & Inventory System Review and Update (fix)

## First thoughts

When I came across this asset I was impressed and encouraged.  
The inventory system seemed clean and simple - clear and minimalist, 
but packed with so much openness and extensibility.  I was excited ...

... Then I started to use it.  Unfortuately there were holes.
* First, and mainly was the documentation.
  * The link (see [below](#from-original-item-&-inventory-system-2.1.4-preview)) 
to the documentation takes you to a 
[website](https://deviongames.com/inventory-system/getting-started/).
I'd like to say it is incomplete, but really it was hardly started.
  * The [Discord](https://discord.gg/y4fMXpZ) seems to be alive, but the creator is abscent
  * On the Discord there isa link to the (original) 
[tutorial videos](https://www.youtube.com/playlist?list=PLexJx2VysToal5by-GWz4U5gXo5HCUX5Y) 
on YouTube
    * Unfortunately they are now a bit out of date
* Secondly, the author is MIA
  * Last update on GitHub as June 2021
  * Last update on Discord also 2021
* After trying to mess with the Unity Asset (Currently version 2.1.3)
  * things break
  * error detection / handling is a bit suspect
  * it is back-level Unity ans a few things just break moving forward
  * not knowing what does what, or relies on what is dishaeartening

## A Plan

This READMI.md is a start, but ...
* try not to touch the base code, yet
* try to map out the structure / dependancies of the code
* try to work out what is independent of what - work out the real modules and plug-ins
* use it for real, but knowingly, to generate "how to"s and "what is"s

## [Documentation](Assets/Devion Games/Docs/README.md)

If you have a tangled ball of string, 
you can keep teasing at the ends and loops till it comes apart.  
But it it is a tangled ball of strings and other things - ugh!
There does not seem to be a sensible place to put documents, 
and I don't want to start changing code! 
So I am going to create a Docs folder and build ".md" files of what I find.
It will also have other document types in it using the ".md" to link them together.

There are "modules" of a sort in the folders things live in.
I need to find the landing places in each 
and see if I can itentify what is in and not in each real module
and how they link and depend on each other.
To complicate matters, there is "run time" and "editor" code, 
and there is the places where things link through Unity objects (components, etc)!

Got to start somewhere, so let's hit the 
["Inventory Ststem"](Assets/Devion Games/Docs/README.md) ...

## From Original Item & Inventory System 2.1.4 preview

Inventory System is a highly flexible tool for unity. It can be used in any type of game genres such as RPG, FPS, RTS, Platformer and many more. It comes with full source code, allowing you to change anything and extend it as you wish.
* Organized Project
* Intuitive Editor
* Triggering System
* Visual Scripting
* Stat System
* Saving and Loading
* Multiple Inventories and Windows
* Animated Windows
* Currency System
* Vendor System
* Gathering Resources
* Crafting
* Restrictions
* Item Property Generators
* Easy to modify and extend
* Source code included
* Examples

**[Documentation](https://deviongames.com/inventory-system/getting-started/) 
| [Discord](https://discord.gg/y4fMXpZ) 
| [Asset Store](https://assetstore.unity.com/packages/tools/gui/item-inventory-system-45568")**

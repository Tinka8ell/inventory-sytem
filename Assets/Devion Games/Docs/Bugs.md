# Bugs discovered ...

## UI Utility scripts

* When the Inventroy System Example Scene - Main Scene
  * ScreenResolution does not handle the Editor Screen size very well! It throws an error:
  * IndexOutOfRangeException: Index was outside the bounds of the array.
  * DevionGames.UIWidgets.ScreenResolution.SetResolution (System.Int32 index) (at Assets/Devion Games/UI Widgets/Scripts/Runtime/Settings/ScreenResolution.cs:27)
  * DevionGames.UIWidgets.ScreenResolution.Start () (at Assets/Devion Games/UI Widgets/Scripts/Runtime/Settings/ScreenResolution.cs:16)

## Replacing DefaultAvatar with UMA

This highlighted some issues:

* The EquipmentHandler has a list of EquipableBones - places where things can go on the avata's rig
  * These are lots when the rig is replaced, fair enough
  * Adding them back, 
    * by either 
      * selecting bones from the UMA rig (not recommended)
      * adding new null bones into the rig and adding these (recommended)
    * doesn't work!
  * the EquipableBones in the database or possibly the items / prefabs are not "=", they may be .equal(), but that's not what's used
* Trying to use the "Item Reference Updater" tool, fails:
  * Firstly, because there is an ItemGroup and a Category of the same name "Teleporter" in the supplied example database
    * When ItemReferenceEditor.UpdateReference() tries to match one of them to the database, if matches with the other
      * Updating the reference then fails as you can't convert from on to the other!
  * Secondly, once fixing the check to also match Type as well as Name on the item, Unity Editor dissappears in a pudf of smoke!
    * The very clever, but badly implented Reflection code in ItemReferenceEditor calls UpdateReference() recursively without checks
      * In the Editor.log (in ~.config/unity3d) the last entry was out of resource error and it had over 8000 entries in the stack for that method call!
      * That would eat up all the space memory!




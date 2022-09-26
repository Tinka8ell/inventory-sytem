# Tools > Devion Games

These are the tools that are provided, but what do they do?

* Tools
  * Devion Games
    * [Module Manager](#module-manager)
    * [UI Widgets](#ui-widgets)
    * Third Person Controller
      * [Setup Character](#setup-character)
    * Stats System
      * [Editor](#stats-system-editor)
      * [Create Stats Manager](#create-stats-manager)
    * Inventory System
      * [Editor](#information-system-editor)
      * [Merge Database](#merge-database)
      * [Item Reference Updater](#item-reference-updater)
      * [Create Inventory Manager](#create-inventory-manager)
    * [Internal](#internal)
      * Built-in Styles & Icons
      * Copy Components
      * Delete PlayerPrefs
      * Delete EditorPrefs
      * Recompile Scripts
      * Update to TextMeshPro

## Important

### Create Stats Manager

Will create a new Stats Manager object in the scene.
This one is greyed out if there is already oen in the scene.

### Create Inventory Manager

Will create a new Inventory Manager object in the scene.
This one is not greyed out if there is already oen in the scene - which is probably a bug!

### Database Creators

Both creators make a new empty GameObject with the correct name in the scene 
and add the appropriate Manager script with its default (empty) settings, 
i.e. no databases defined.

### Stats System Editor

[A "database" editor for Stats databases](Screenshots/StatsSystem.png).

### Information System Editor

[A "database" editor for Item databases](Screenshots/InformationSystem.png).

### Database Editors

Both editors look initially at the current (main) database for which ever system they are for.
They have the option to select any other databases of the same type, and create a new one.
Each editor has a tab for each list type of that database, 
a list of the entries of the type selected and 
an editor window for the entry curently selected from the list.  
There are also buttons to create new entries and delete them.

## Useful

### Setup Character

This [wizard window](Screenshots/CharacterSetup.png) allows you to set up a pre-existing player GameObject 
as a third person character.  
By selecting or dropping the GameObject it becomes a [build window](Screenshots/CharacterSetupBuild.png)
with options to change which components are added.
Pressing the Build Character button populates the given [GameObject](Screenshots/CharacterSetupBuild.png).
This is only for the motion control of the character.  
**It does not add any inventory components.**

### Merge Database

This allows us to combine the contents of one Item Database into another.
This is much like the Information System works (inernally) the the main and child databases.

### Item Reference Updater

[Interesting wizard](Screenshots/ItemReferenceUpdater.png).
Seems to enable you to combine 
* scenes (with button to add open ones)
* prefabs root directory

into an Item database and show differences and allow updates to the database.
It may also be broken as it throws up:
```
ArgumentOutOfRangeException: StartIndex cannot be less than zero.
```

### UI Widgets

Provides a [list](Screenshots/UIManager.png) of all the UI Widgets in the project.
Viewed by:
* name
* path

Sorted by
* A-Z
* Hierachy

Each is displayed with two icons.  Second is a visible / not visible (active) indiscator.
Clicking on a widget takes you to that item in the scene.

### Internal

There are a numbr of tools marked "internal".
* Built-in Styles & Icons
  * Just shows all the sytles or icons available in the project
* Copy Components
  * Does what it says on the tin
* Delete PlayerPrefs
  * Whatever it does, it doesn't say
* Delete EditorPrefs
  * Whatever it does, it doesn't say
* Recompile Scripts
  * Whatever it does, it doesn't say, but Unity does seem to do some sort of import / recompile
* Update to TextMeshPro
  * Decided not to try this one


## Broken

### Module Manager
Don't know what it was for, but it's prime source for data is:
https://deviongames.com/modules/modules.txt
and that no longer exists (404 error for both modules.txt and modules folder)!
Not surprisingly it does not work.
Produces an empty editor box and the following error:
```
NullReferenceException: Object reference not set to an instance of an object
DevionGames.JsonHelper.FromJson[T] (System.String json) (at Assets/Devion Games/Module Manager/Editor/JsonHelper.cs:13)
DevionGames.ModuleManagerWindow+<RequestModules>d__16.MoveNext () (at Assets/Devion Games/Module Manager/Editor/ModuleManagerWindow.cs:82)
DevionGames.ModuleManagerWindow+<>c__DisplayClass22_0.<StartBackgroundTask>b__0 () (at Assets/Devion Games/Module Manager/Editor/ModuleManagerWindow.cs:339)
UnityEngine.Debug:LogException(Exception)
DevionGames.<>c__DisplayClass22_0:<StartBackgroundTask>b__0() (at Assets/Devion Games/Module Manager/Editor/ModuleManagerWindow.cs:346)
UnityEditor.EditorApplication:Internal_CallUpdateFunctions() (at /home/bokken/buildslave/unity/build/Editor/Mono/EditorApplication.cs:356)
```

## To do

### Setup Character
### Built-in Styles & Icons
### Copy Components
### Delete PlayerPrefs
### Delete EditorPrefs
### Recompile Scripts
### Update to TextMeshPro

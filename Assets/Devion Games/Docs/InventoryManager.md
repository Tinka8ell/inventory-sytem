# InventoryManager

A good guess on this one being a significant object! 
* Singlton
* "Do not Destroy" object
* Accessed by many places
* Has static property - current 
* And the warning:
  * Requires an Inventory Manager. 
  * Create one from Tools > Devion Games > Inventory System > Create Inventory Manager!
* Ok, might need to also consider the Editor scripts, 
but I think this one only creates and empty game object with this as a component ...
* Create probabaly prefills various objects:
  * Warning message - Please assign ItemDatabase to the Inventory Manager!

## Contains:
* One or more (child) ItemDatabases 
* Various Settings - properties extracted from the ItemDatabases
  * Default settings - for anything missing
  * UI
  * Notifications
  * SavingLoading
  * Configuration.Input
* A Dictionary or Prefabs - a cache
* A PlayerInfo
* Hidden UnityEvents:
  * onDataLoaded
  * onDataSaved
  * and backing proporty of IsLoaded

## What is it?
* Seems to be like a "Game Controler" object.
* OnAwake:
  * Makes sure it is a singleton
  * Instantiates (if missing) an EventSystem
  * If Camera.main hasn't got one, adds a PhysicsRaycaster
  * Creates (instantiates) the ItemDatabase and merges in any child ones
  * Subscribes to: UnityEngine.SceneManagement.SceneManager.activeSceneChanged
  * If marked as "Do Not Destroy", detaches from any parent and makes itself "Do Not Destroy"
  * If autoSave is enables starts the RepeatSaving() Coroutine
* Load and Save use (Serializable) JSON and a complicated key system in PlayerPrefs 
* GetPrefab(name)
  * Takes from cache (dictionary) if there
  * Takes from the ItemDatabase if there
  * Instantiates using name from Resources
  * if successful and not already there adds it to the cache
* CreateCollection(name, position, rotation)
  * "Instantiate"s a game object from the prefab returned by GetPrefab 
  and locates it with the given coordiates
* CreateInstance / CreateInstances
  * Returns an instantiated Item or array of instantiated Items

## Significant dependant objects
* [ItemDatabase](ItemDatabase.md)
* [Settings](Settings.md)
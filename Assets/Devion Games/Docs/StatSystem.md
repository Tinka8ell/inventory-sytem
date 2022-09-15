# StatSystem

Holds / manages the player's state.
A good guess on this one being a significant object! 
* Singlton
* "Do not Destroy" object
* Accessed by many places
* Has static property - current 
* And the warning:
  * Requires a Stats Manager.
  * Create one from Tools > Devion Games > Stat System > Create Stats Manager!
* Ok, might need to also consider the Editor scripts, 
but I think this one only creates and empty game object with this as a component ...
* Create probabaly prefills various objects:
  * Warning message - Please assign StatDatabase to the Stats Manager!


## Contains:
* Database - StatDatabase
* Various Settings - properties extracted from the StatDatabase
  * Default settings - for anything missing
  * UI
  * Notifications
  * SavingLoading
  * Configuration.Input
* List of StatHandlers

## What is it?
* Seems to be like a "Game Controler" object.
* OnAwake:
  * Makes sure it is a singleton
  * If marked as "Do Not Destroy", detaches from any parent and makes itself "Do Not Destroy"
* Start()
  * If autoSave is enables starts the RepeatSaving() Coroutine
* Load and Save use (Serializable) JSON and a complicated key system in PlayerPrefs 
* RegisterStatsHandler(StatsHandler) adds StatsHandler to list
* GetStatsHandler(name) returns a named StatsHandler 

## Significant dependant objects
* [StatDatabase](StatDatabase.md)
* [StatsHandler](StatsHandler.md)

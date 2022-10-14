# Load and Save

The [inventory manager](InventoryManager.md) of the inventory system by default uses PlayerDefs.

## Autosave 

Autosave uses a "key" taken from InventoryManager.SavingLoading.savingKey which is "Player" by default.
The key is found by looking for a value against the key of InventoryManager.SavingLoading.savingKey.
This is used if found, or that as a key if not.  So by default, it will use "Player".
Code use is:
```C#
PlayerPrefs.GetString(InventoryManager.SavingLoading.savingKey, InventoryManager.SavingLoading.savingKey)
```

## The PlayerDefs key structure

* "InventorySystemSavedKeys" - list of all save keys (delimited by ";") - maintained as each new save key added
  * <key> + "UI" - player (UI) data
  * <key> + ".Scenes" - Game Scenes that have been recorded for this key - maintained as each new scene key added for a save key
  * <key> + "." + <scene> - data for this Game Scene relevant to this key

### Functions:

* Save() - (autosave) gets key as per above and uses it for:
* Save(key) - actually this is the full Save(key, 0) as index defaults to 0
  * Saving new slot uses the current UTC time string as the key
* Save(key, index) -  not sure yet where index may be set
  * Creates serialised data as JSON strings using `Serialize(ref uiData, ref worldData)`
    * uiData encapsulates what is needed for all the UI objects (inventory, etc?)
    * worldData encapsulates what is needed to recreate world objects (items, chests, resources, etc?)
  * Gets the current scene name using `Serialize(ref uiData, ref worldData)`


### Game Save from Menu UI

* Save New uses Save(DateTime.UtcNow.ToString() - so a key of now (rather UTC Now)
* Existing slots have keys taken from PlayerPrefs key of "InventorySystemSavedKeys" separated by ";".

### Keys

The keys used are retrieved using:
```C#
PlayerPrefs.GetString("InventorySystemSavedKeys").Split(';')
```

The scene names used are retrieved using:
```C#
PlayerPrefs.GetString(key + ".Scenes").Split(';')
```

For each such "key" we then save:

* uiData to <key>+"UI"
* worldData to <key>+"."+<current screen name>
* and add (if not there already) the "current screen name" to <key>+".Scenes"
* and finally add (if not there already) the "key" to "InventorySystemSavedKeys"

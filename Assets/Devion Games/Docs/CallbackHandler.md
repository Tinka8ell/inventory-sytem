# CallbackHandler

It's a Callback handler for custom events.

## Contains:
* Refs for
  * Camera
  * It's transform
  * Our player object's transform

## What is it?
* Delegates for named:
* Callbacks

## Significant dependant objects

## Analysis

### class CallbackHandler
* Extends MonoBehaviour
* Fields
  * delegates - List of CallbackHandler.Entry
  * Callbacks - list of names of the callbacks
* Methods
  * Execute on all matching evanets with callback Invoke its callback with the data
  * RegisterListener uniquely (first only) record callback (name) to call and AddListener
  * RemoveListener for any matching callback RemoveListener

### class CallbackHandler.Entry
* Fields
  * eventID(string)
  * callback(CallbackEvent);

### class CallbackEvent
* Extends UnityEvent with CallbackEventData
* Fields
  * properties (Dictionary of named object)
* Methods
  * AddData (object and unique replacing name)
  * GetData (object using a name)

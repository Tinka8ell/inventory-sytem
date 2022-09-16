# SelectionHandler

It's a CallbackHandler for OnSelect and  OnDeselect.
From the [Default Avatar](DASelectionHandler.png)
we can get some idea of how it is supposed to be used.

## Contains:
* Refs for
  * Camera
  * It's transform
  * Our player object's transform

## What is it?
* A CallbackHandler for
  * OnSelect
  * OnDeselect
* Start
  * Sets refs to camera and player
  * Starts a CustomUpdate
    * Every second cleans up after incomplete deselections
* Update
  * Looks for events that may cause a select or deselect
    * A mixture of:
    * Mouse clicks
    * Key presses
    * Raycasts (looking at)
    * Mouse-overs
  * Calls any callbacks listening on those selects and deselects

## Significant dependant objects

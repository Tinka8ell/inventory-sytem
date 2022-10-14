# SelectionHandler

It's a CallbackHandler for OnSelect and OnDeselect.
From the [Default Avatar](Screenshots/DASelectionHandler.png)
we can get some idea of how it is supposed to be used.
It polls InputManger for select or deselect actions and 
checks if we walk away from distance critical selections.

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

## Analysis

### class SelectionHandler
* Extends [CallbackHandler](CallbackHandler.md) which is MonoBehaviour (so can have Start and Update)
* Fields
  * Callbacks array of names ("OnSelect", "OnDeselect)
  * SelectionInputType (EnumFlag) defaults to LeftClick | Raycast
  * SelectionDistance
  * SelectionKey(KeyCode) default to F
  * RaycastOffset
  * LayerMask 
  * DeselectionInputType (EnumFlag) defaults to LeftClick | Key
  * DeselectionKey(KeyCode) defaults to Escape
  * DeselectionDistance
  * UpdateInterval
  * Camera set at Start()
  * CameraTransform set at Start()
  * Transform set at Start()
  * Offset(Vector3)
  * CurrentSelection(ISelectable)
* Methods
  * Start
  * CustomUpdate() InvokeRepeating after 1 sec repeating at UpdateInterval
    * If a CurrentSelection A Distance DeselectionInputType, Deselect if moved away
  * Update - polls InputManger for select or deselect actions
    * If Input Mouse Button Down matching SelectionInputType, TrySelect using ScreenPointToRay(Input.mousePosition)
    * Else if any Input Mouse Button Down and SelectionInputType is RayCast, TrySelect using Ray(Camera forward by offset)
    * Else if Input KeyDown matches SelectionKey SelectionInputType is Key, GetBestSelectable
    * Not IsPointerOverUI:
      * if not selecting something (above)
        * If Input Mouse Button Down matching DeselectionInputType, TrySelect using ScreenPointToRay(Input.mousePosition)
        * Or if any Input Mouse Button Down and DeselectionInputType is RayCast, TrySelect using Ray(Camera forward by offset)
        * Or if Input KeyDown matches SelectionKey DeselectionInputType is Key, GetBestSelectable
        * Deselect
  * TrySelect if can Select
  * Select
    * Deselect any current
    * set CurrentSelection
    * call its OnSelect()
  * Deselect
    * If CurrentSelection call its OnDeselect()
    * clear CurrentSelection
  * GetBestSelectable

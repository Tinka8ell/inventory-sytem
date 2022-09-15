# [Third Person Controller Gameobjects](DefaultAvatarScreenshot.png)

As discussed before there are two related Prefabs (Default Avatar and Third Person Camera).
The Avatar itself is constructed from further Prefabs.  

## Contains:

* Default Avatar
  * Geo_grp
  * Reference
    * Hips
* Third Person Camera

## What is it?

* Third Person Camera's job is to follow and provide a direction from which WASD works.
* Default Avatar contains the skeleton (bones) called Reference and 
another group that seems to be related to expressions on the Avatar, which I'll ignore for now.

## Significant dependant GameObjects
* [Default Avatar](DefaultAvatarComponents.md)

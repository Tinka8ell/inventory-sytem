# StatsHandler

Thing that looks after Stats.
From the [Default Avatar](Screenshots/DAStatsHandler.png)
we can get some idea of how it is supposed to be used.
In this case, there are a lot of Stats and a couple of Effects listed.

## Contains:
* HandlerName
* Lists
  * m_Stats of Stat
  * m_StatOverrides of StatOverride
  * m_Effects of StatEffect
* onUpdate - System.Action

## What is it?
* Start
  * Instantiates
    * Stats
      * and any StatOverrides
    * StatEffects
  * Register StatsHandler with StatsManager
  * Register SendDamage with EventHandler
* Update
  * Execute any StatEffects
* SendDamage - respond to damage if appropriate

## Significant dependant objects
* Stats

## Analysis

### class StatsHandler
* No direct interaction with Input Manager
* Extends: MonoBehaviour, IJsonSerializable
* Fields:
  * HandlerName (String property)
    * RegisterStatsHandler with StatsManager at Start()
  * saveable (bool field)
  * Stats (List of Stat)
    * Instantiate'd at Start() and ApplyStartValues'd
  * StatOverrides (List of StatOverride)
    * initialised to match count of Stats, and Initialize'd together at Start()
  * Effects (List of StatEffect)
    * initialised and Initialize'd at Start()
  * onUpdate (System.Action)
  * AudioSource
* Methods
  * Start - set up
  * SendDamage - Register'd with EventHandler at Start()
  * Update
    * Invoke onUpdate (if defined)
    * for each Effercts - execute
  * ApplyDamage (one or array)
      * if Attribute matches
        * decrement (to 0) by damage
  * TriggerAnimationEvent(AnimationEvent ev) - if significant SendMessage()
  * SendDamage - to each overlapped collider
  * Knockback - if required
  * DisplayDamage
  * PlaySound
  * GetStat - look up in Stats by name
  * CanApplyDamage can stat receive it
  * AddEffect to Effects and Initialize
  * RemoveEffect by name
  * AddModifier
  * RemoveModifiersFromSource
  * GetStatValue
  * GetStatCurrentValue
  * GetObjectData add our data to a Dictionary
  * SetObjectData set our data from a Dictionary

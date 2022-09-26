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
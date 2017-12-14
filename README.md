# Sokoban

The goal of this project is to develop a sokoban game. The application should be able to load levels, collect points... Nicely decoupling the UI from the game model should be considered.

## Members

* Tomáš Vybíral
* Michal Martinek
* Ilia Liferov
* Roman Levinzon
* Štěpán Bergl

## Weekly reports

### 24.11.17

During the first week, we all agreed on strategy and divided work into three parts: game logic, ui and integration. We also studied the game principles itself and Bloc library. 


### 15.12.17

We have almost finished game-logic part of the game. Reading level from string was implemented. (Space - empty tile, "#" - wall tile, "P" - player tile, "C" - crate tile, "S" - crateslot tile). According to OOP best practices polymorphism was used.
Also we started to implement ui part of the game. Showing game window and tiles itself is our next goal. We have hurry-scurry written code of this by now in the ui branch.

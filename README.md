# Sokoban 1.0.0

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
Also we started to implement ui part of the game. Showing game window and tiles itself is our next goal. We have hurry-scurry written code of this in the ui branch by now.

### 04.01.18

During the last phase we implemented some new features, prepared game parts to communicate each other and integrated them together. In UI part there was created window changing system with menu and buttons, which are controlling interface using event listeners. In game logic part we were fixing some bugs with entity movement. We also added first 10 levels, so player can choose one of them in the menu. Finally all parts were integrated and observer pattern was used for comunnication between ui and gamelogic part.

## Documentation

### Installation and running the game

  1. Install Bloc library: https://github.com/pharo-graphics/Bloc
  
  2. Install SKBCore: Clone this repository via Iceberg
  
  3. Run game:  Open Playground and do:

    SKBGame start.
    
### Architecture

When we were designing our project, we decided to split problem to multiple parts to make it more complex and logically divided, so we used Model-View-Controller architecture. We used Bloc library to render UI and we use it only in View part. Every action player do is handled by event listeners and sent to controller. In Controller part, we used Observer pattern, so View part is directly notified after changes are done in Controller. Controller also works with Model part, where each level tile is defined. 

### Design Patterns

#### Polymorphism
  Polymorphism pattern was used to handle different behaviour of all kinds of tiles in the game. For example object SKBTile defines method type:
  
      type
	    ^ self type
  
 and subclass SKBWall overrides this method:
  
      type
	    ^ #SKBWall
  
#### Singleton
  In the game there is unique collection of levels, so we decided to use Singleton pattern there. In object SKBLevelCollection are all methods (including initialization) class-side, so there can exist only one unique functional object.
 
#### Observer
  Observer pattern allows UI directly react on players actions. For example it was used in SKBController object in method responseOnMove:
      
      responseOnMove: aBlockClosure 
	      onMoveResponse := aBlockClosure.

  and aBlockClosure defines which changes will occur in UI.
  
#### Composite
  Main object SKBGameElement is composed out of many child objects (not subclasses) (current window, listeners, current level, level collection etc.):

      BlElement subclass: #SKBGameElement
	    instanceVariableNames: 'window eventLstnr levels currentLevel levelIndex keyLstnr'
	    classVariableNames: ''
	    package: 'SKBCore-Elements'
  
  and each of it's child objects knows about it's parent, so there is possible two-way communication between them (for example SKBPageElement):
  
      BlElement subclass: #SKBPageElement
	    instanceVariableNames: 'gameElement'
	    classVariableNames: ''
	    package: 'SKBCore-Pages'



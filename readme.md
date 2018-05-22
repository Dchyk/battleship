# Battleship

## Thought process

## Objects and relationships
- Board 
- - has 10 rows and 10 columns (100 spaces)
- - has 5 ships placed on it
- - has record of hits 
- - has record of misses
- - has record of sunken ships

- Ship
- - has a position
- - has a length
- - has a number of hits it can take before sinking
- - has a number of hits it has taken so far
- - "sunk" is either true or false

- Player
- - has a Board
- - is either 1) still playing, 2) won the game, 3) lost the game
- - is able to play a "shot"


# Battleship

## Thought process

### Objects and relationships
Board 
- has 10 rows and 10 columns (100 spaces)
- has 5 ships placed on it
- has record of hits 
- has record of misses
- has record of sunken ships

Ship
- has a position
- has a length
- has a number of hits it can take before sinking
- has a number of hits it has taken so far
- "sunk" is either true or false

Player
- has a Board
- is either 1) still playing, 2) won the game, 3) lost the game
- is able to play a "shot"

### Data Structures

Storing the spaces
- Each space could be a two-dimensional array with two elements - a row, and a column: [row, column]
- Then, these arrays could be passed around as sub-collections ("squares") to keep track of the game's state. The board is initialized with 100 
squares all pushed into the board array:
@board = [[A, 1], [A, 2], ...] 
- When squares are assigned to a ship (a ship "occupies" those squares), they are popped off the board array, and pushed into the ship array. After this process is complete, only "empty" squares are left in board array. 
- When a player takes a "shot" at a square, 
it is tested against the board's remaining spaces, and if it is found there, this square is popped off of the board array and pushed into a "misses" array. This is to prevent the same square from ever being played twice, and to keep track of "misses" so they can be displayed to the player. 
- If the "shot" is not found in the board array, then it must be occupied by a ship. So the next step is to check each ship for where the square that was hit by the shot? Or, is it to simply store the shot, and check each ship's squares to see if all are in the "hit" array. Also feels inefficient but makes sense. 
- ships.each do |ship|
    if ship.all? { |squares| hits.include?(squares) }
      ship.sunk = true
    end
  end

- Alternatively, each square could be a hash with three keys:
1) row: String
2) column: Integer
3) occupied: Boolean
3) status: String ("empty", "occupied by a ship")
- Then on each shot, a selection of the board squares could be checked for their status value.
- Status could be a string like "empty", nil, or a string like "A" for aircraft carrrier
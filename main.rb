class Board
  attr_accessor :squares, :view

  def initialize(view)
    @squares = generate_squares
    @view = view
  end

  def generate_squares
    squares = []

    ('A'..'J').each do |row|
      (1..10).each do |column|
        squares.push([row, column])
      end
    end

    squares
  end
end

class Ship
  def initialize(type, length)
    @name = name;
    @length = length;
    @squares = []; # Holds the ship's position on the board
  end

  def set_position(fore, aft)
    if is_valid_position(fore, aft)
      @squares = extrapolate_position(fore, aft)
    else 
      raise("That's an invalid position! Try again.")
    end
  end

  def is_valid_position(fore, aft)
    # A valid position must obey these rules:
    # 1. Both fore and aft must be on the board
    # 2. Fore and aft must be on either the same row, or in same column
    # 3. Either space designated as fore or aft cannot already be occupied
    # 4. None of the intervening spaces between fore and aft can already be occupied
    # - - this can be computed by determining if the ship is in a row or a column,
    # - - and then subtracting for from aft. 
    # But what if the ship is "facing" down vs. up?
    # - - just flip the subtraction - if fore is "less than" aft the intervening spaces
    # - - can be found by counting upward until aft is reached; else, by counting downward
  end
end

class Player

end


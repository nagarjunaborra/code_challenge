class Board
  class << self
    BOARD_SIZE = 8
    def possible_moves(selected_piece, x, y)
      ### Calculate possible positions
      moves = Piece.moves(selected_piece).collect { | move |
        (1..move[:times]).collect { |distance|
          new_x = x + (move[:x] * distance)
          new_y = y + (move[:y] * distance)
          [new_x, new_y]
        }
      }.flatten(1).sort { |m1,m2|
        c = (m1[0] <=> m2[0])
        c == 0 ? (m1[1] <=> m2[1]) : c
      }

      ### Remove invalid moves

      valid_moves = moves.reject { |m| m[0] < 1 || m[0] > BOARD_SIZE || m[1] < 1 || m[1] > BOARD_SIZE }

      ### Output

      valid_moves.collect { |m|
        x = (m[0] + 96).chr
        y = m[1]
        "#{x}#{y}"
      }
    end
  end
end
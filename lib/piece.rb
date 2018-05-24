class Piece
  class << self
    def moves(type)
      moves = []
      case type
      when "rook"
        moves.push({ :x=>  1, :y=>  0, :times => 8},
          { :x=> -1, :y=>  0, :times => 8},
          { :x=>  0, :y=>  1, :times => 8},
          { :x=>  0, :y=> -1, :times => 8})
      when "queen"
        moves.push({ :x=>  1, :y=>  1, :times => 8},
          { :x=>  1, :y=>  0, :times => 8},
          { :x=>  1, :y=> -1, :times => 8},
          { :x=> -1, :y=>  1, :times => 8},
          { :x=> -1, :y=>  0, :times => 8},
          { :x=> -1, :y=> -1, :times => 8},
          { :x=>  0, :y=>  1, :times => 8},
          { :x=>  0, :y=> -1, :times => 8})
      when "knight"
        moves.push({ :x=>  1, :y=>  2, :times => 1},
          { :x=>  2, :y=>  1, :times => 1},
          { :x=>  1, :y=> -2, :times => 1},
          { :x=>  2, :y=> -1, :times => 1},
          { :x=> -1, :y=>  2, :times => 1},
          { :x=> -2, :y=>  1, :times => 1},
          { :x=> -1, :y=> -2, :times => 1},
          { :x=> -2, :y=> -1, :times => 1})
      else
        nil
      end
    end
  end
end
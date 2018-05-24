require_relative "../lib/board.rb"

RSpec.describe Board do

  describe "Class Methods" do
    let(:selected_piece_knight) { "knight" }
    let(:selected_piece_rook) { "rook" }
    let(:selected_piece_queen)  { "queen" }
    let(:x) { 4 }
    let(:y) { 2 }

    it "provides all the possible moves for piece knight at position d2" do
      expect(Board.possible_moves(selected_piece_knight, x, y)).to eq(["b1", "b3", "c4", "e4", "f1", "f3"])
    end

    it "provides all the possible moves for piece rook at position d2" do
      expect(Board.possible_moves(selected_piece_rook, x, y)).to eq(["a2", "b2", "c2", "d1", "d3", "d4", "d5", "d6", "d7", "d8", "e2", "f2", "g2", "h2"])
    end

    it "provides all the possible moves for piece queen at position d2" do
      expect(Board.possible_moves(selected_piece_queen, x, y)).to eq(["a2", "a5", "b2", "b4", "c1", "c2", "c3", "d1", "d3", "d4", "d5", "d6", "d7", "d8", "e1", "e2", "e3", "f2", "f4", "g2", "g5", "h2", "h6"])
    end
  end
end
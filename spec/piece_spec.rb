require_relative "../lib/piece.rb"

RSpec.describe Piece do

  describe "Class Methods" do
    let(:selected_piece_knight) { "knight" }
    let(:selected_piece_rook) { "rook" }
    let(:selected_piece_queen)  { "queen" }
    let(:selected_piece_example) { "example" }

    it "returns a moves array for rook" do
      expect(Piece.moves(selected_piece_rook)).to be_an_instance_of(Array)
    end

    it "returns a moves array for knight" do
      expect(Piece.moves(selected_piece_knight)).to be_an_instance_of(Array)
    end

    it "returns a moves array for queen" do
      expect(Piece.moves(selected_piece_queen)).to be_an_instance_of(Array)
    end

    it "returns nil when the piece entered is not supported" do
      expect(Piece.moves(selected_piece_example)).to eq(nil)
    end
  end
end
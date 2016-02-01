require 'rails_helper'

RSpec.describe Pair, type: :model do
  describe 'relationships' do
    let(:sam) { Player.create!(name: "Sam") }
    let(:imogen) { Player.create!(name: "Imogen") }
    let(:charlie) { Player.create!(name: "Charlie") }
    let(:milly) { Player.create!(name: "Milly") }

    let(:sam_and_immy) do
      pair = Pair.create
      pair.players = [sam, imogen]
      pair.save!
      pair
    end

    let(:charlie_and_milly) do
      pair = Pair.create
      pair.players = [charlie, milly]
      pair.save!
      pair
    end

    it 'has players' do
      expect(sam_and_immy.players).to all( be_a(Player))
    end

    it 'cannot have more than two players' do
      sam_and_immy.players << charlie
      expect(sam_and_immy.players.count).to eq(2)
    end
  end
end

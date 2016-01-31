require 'rails_helper'

RSpec.describe Player, type: :model do

  describe 'relationships' do
    let(:sam) { Player.create!(name: "Sam") }
    let(:charlie) { Player.create!(name: "Charlie") }
    let(:milly) { Player.create!(name: "Milly") }

    it 'can have many pairs' do
      sam_and_charlie = Pair.create
      sam_and_charlie.players << sam
      sam_and_charlie.players << charlie
      sam_and_milly = Pair.create
      sam_and_milly.players << sam
      sam_and_milly.players << milly

      expect(sam.pairs.count).to eq(2)
    end

    xit 'has many partners via pairing' do

    end
  end

  describe 'constraints' do
    xit 'must be created with a name' do

    end
  end
end

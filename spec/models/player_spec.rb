require 'rails_helper'

RSpec.describe Player, type: :model do

  describe 'relationships' do
    let(:player) { Player.create!(name: "Sam") }
    let(:partner1) { Player.create!(name: "Charlie") }
    let(:partner2) { Player.create!(name: "Milly") }

    it 'can have many pairs' do
      player.pairs << partner1
      player.pairs << partner2
      expect(player.pairs.count).to eq(2)
    end

    xit 'has many partners via pairing' do

    end
  end

  describe 'constraints' do
    xit 'must be created with a name' do

    end
  end
end

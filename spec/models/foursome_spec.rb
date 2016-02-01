require 'rails_helper'

RSpec.describe Foursome, type: :model do
  describe 'relationship' do
    let(:sam) { Player.create!(name: "Sam") }
    let(:imogen) { Player.create!(name: "Imogen") }
    let(:charlie) { Player.create!(name: "Charlie") }
    let(:milly) { Player.create!(name: "Milly") }
    let(:di) {Player.create!(name: "Diana")}
    let(:patrick) {Player.create!(name: "Patrick")}

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

    let(:di_and_paddy) do
      pair = Pair.create
      pair.players = [di, patrick]
      pair.save!
      pair
    end

    let(:awesome_foursome) do
      foursome = Foursome.create
      foursome.pairs = [sam_and_immy, charlie_and_milly]
      foursome.save!
      foursome
    end

    it 'has pairs' do
      expect(awesome_foursome.pairs).to all(be_a(Pair))
    end

    it 'cannot have more than 2 pairs' do
      awesome_foursome.pairs << di_and_paddy
      expect(awesome_foursome.pairs.count).to eq(2)
    end
  end
end

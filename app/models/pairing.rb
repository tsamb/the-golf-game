class Pairing < ActiveRecord::Base
  belongs_to :pair
  belongs_to :player

  validate :pair_player_limit, :on => :create

    def pair_player_limit
      if self.pair.pairings(:reload).count >= 2
        errors.add(:base, "Max 2 players per pair")
      end
    end
end

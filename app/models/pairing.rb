class Pairing < ActiveRecord::Base
  belongs_to :pair
  belongs_to :player

  validates_uniqueness_of :player, scope: :pair, message: "cannot pair with themselves"
  validate :pair_player_limit, :on => :create

    def pair_player_limit
      if self.pair.pairings(:reload).count >= 2
        errors.add(:base, "Max 2 players per pair")
      end
    end
end

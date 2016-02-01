class PairGrouping < ActiveRecord::Base
  belongs_to :pair
  belongs_to :foursome

  validate :foursome_pair_limit, :on => :create

  def foursome_pair_limit
    if self.foursome.pair_groupings(:reload).count >= 2
      errors.add(:base, "Max 2 pairs per foursome")
    end
  end
end

class Pair < ActiveRecord::Base
  has_many :pairings
  has_many :players, through: :pairings

  has_many :pair_groupings
  has_many :foursomes, through: :pair_groupings

  has_many :won_holes
end

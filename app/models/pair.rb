class Pair < ActiveRecord::Base
  has_many :pairings
  has_many :players, through: :pairings
end

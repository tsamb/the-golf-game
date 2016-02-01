class WonHole < ActiveRecord::Base
  belongs_to :hole
  belongs_to :pair
  belongs_to :round
end

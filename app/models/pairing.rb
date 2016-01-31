class Pairing < ActiveRecord::Base
  belongs_to :pair
  belongs_to :player
end

class Foursome < ActiveRecord::Base
  belongs_to :round

  has_many :pair_groupings
  has_many :pairs, through: :pair_groupings
end

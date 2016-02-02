class Hole < ActiveRecord::Base
  belongs_to :course
  has_many :match_play_hole_wins
  has_many :winning_pairs, through: :match_play_hole_wins, source: :pair
end

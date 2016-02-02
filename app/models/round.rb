class Round < ActiveRecord::Base
  belongs_to :course
  has_many :foursomes
  has_many :match_play_hole_wins
end

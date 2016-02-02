class Round < ActiveRecord::Base
  belongs_to :course
  has_many :foursomes
  has_many :won_holes
end

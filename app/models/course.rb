class Course < ActiveRecord::Base
  has_many :holes
  has_many :rounds
end

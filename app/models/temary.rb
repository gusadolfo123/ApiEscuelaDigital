class Temary < ApplicationRecord
  belongs_to :course
  has_many :lessons
end

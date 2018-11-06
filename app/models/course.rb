class Course < ApplicationRecord
  belongs_to :teacher
  has_and_belongs_to_many :students
  has_and_belongs_to_many :categories
  has_many :temaries
end

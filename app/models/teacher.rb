class Teacher < ApplicationRecord
  
  include Filterable

  belongs_to :user
  has_many :courses
  
  scope :user_id, -> (user_id) { where user_id: user_id }
  
end

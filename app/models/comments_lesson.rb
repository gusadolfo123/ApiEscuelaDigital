class CommentsLesson < ApplicationRecord
  
  include Filterable
  
  belongs_to :lesson
  belongs_to :user
  
  scope :user_id, -> (user_id) { where user_id: user_id }
  
end

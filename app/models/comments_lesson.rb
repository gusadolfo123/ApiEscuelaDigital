class CommentsLesson < ApplicationRecord
  
  include Filterable

  
  belongs_to :lesson
  belongs_to :user
end

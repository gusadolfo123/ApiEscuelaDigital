class CommentsLesson < ApplicationRecord
  belongs_to :lesson
  belongs_to :user
end

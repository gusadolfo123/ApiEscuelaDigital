class CommentsLessonSerializer < ActiveModel::Serializer
  attributes :id, :content
  has_one :lesson
  has_one :user
end

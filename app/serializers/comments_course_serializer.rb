class CommentsCourseSerializer < ActiveModel::Serializer
  attributes :id, :content
  has_one :course
  has_one :user
end

class CourseSerializer < ActiveModel::Serializer
  attributes :id, :Title, :Description
  # has_many :categories
  has_one :teacher
end

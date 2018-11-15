class CourseSerializer < ActiveModel::Serializer
  attributes :id, :Title, :Description, :UrlImage, :created_at
  # has_many :categories
  has_one :teacher
  has_many :students
end

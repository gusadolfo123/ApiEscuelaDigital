class CourseSerializer < ActiveModel::Serializer
  attributes :id, :Title, :Description, :UrlImage
  # has_many :categories
  has_one :teacher
end

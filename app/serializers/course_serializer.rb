class CourseSerializer < ActiveModel::Serializer
  attributes :id, :Title, :Description
  has_one :teacher
end

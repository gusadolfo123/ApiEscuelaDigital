class TeacherSerializer < ActiveModel::Serializer
  attributes :id, :Description, :Position
  # has_one :user
  has_many :courses
end

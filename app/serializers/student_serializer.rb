class StudentSerializer < ActiveModel::Serializer
  attributes :id, :Description, :BirthDate
  # has_one :user
  has_many :courses
end

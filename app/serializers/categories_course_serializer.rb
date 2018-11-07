class CategoriesCourseSerializer < ActiveModel::Serializer
  attributes :id
  has_one :category
  has_one :course
end

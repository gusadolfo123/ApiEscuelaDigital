class TemarySerializer < ActiveModel::Serializer
  attributes :id, :Title
  has_one :course
end

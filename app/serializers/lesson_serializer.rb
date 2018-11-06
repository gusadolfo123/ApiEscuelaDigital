class LessonSerializer < ActiveModel::Serializer
  attributes :id, :Title, :Description, :UrlVideo
  has_one :temary
end

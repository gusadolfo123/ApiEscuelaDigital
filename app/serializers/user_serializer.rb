class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstName, :lastName, :email, :documentNumber, :photo
  has_one :document_type
  has_one :rol
end

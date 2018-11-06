class User < ApplicationRecord

  has_secure_password 
  
  belongs_to :rol
  belongs_to :document_type

  before_save :downcase_email
  validacion_email = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i  

  validates :firstName, presence:true
  validates :lastName, presence:true
  validates :email, presence:true, length: { maximum: 100 }, format: { with: validacion_email }, uniqueness: { case_sensitive: false }  
  validates :password, presence:true, length: { minimum: 8 }, allow_nil:true

  # metodo para volver el email a minuscula
  def downcase_email
      self.email.downcase!
  end

end

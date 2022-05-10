class User < ApplicationRecord

  # Este metodo sirve para hashear el password
  has_secure_password

  # Validaciones
  validates :email, uniqueness: true
  validates_format_of :email, with: /@/
  validates :password_digest, presence: true


end

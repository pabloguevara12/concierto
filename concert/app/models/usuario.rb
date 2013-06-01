class Usuario < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :password_confirmation, :crypted_password, :email, :salt, :username
  #validates_confirmation_of :crypted_password, message: "Contrasenas no coinciden", if: :password
  validates :password, :confirmation => true
end

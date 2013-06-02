class Usuario < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :password_confirmation, :crypted_password, :email, :salt, :name, :apaterno, :amaterno,
   :email_confirmation, :utype_id, :gender, :dtype_id, :num_identity
  validates :password, :confirmation => true
  validates_confirmation_of :email
  validates_uniqueness_of :email
  validates_uniqueness_of :num_identity
end

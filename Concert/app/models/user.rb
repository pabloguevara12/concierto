class User < ActiveRecord::Base  
  authenticates_with_sorcery!  
 

attr_accessible :password, :password_confirmation, :crypted_password, :email, :salt, :name, :apaterno, :amaterno,
   :email_confirmation, :utype_id, :gender, :dtype_id, :num_identity

	has_one :utype

validates :name, :presence => {:message => " no puede estar en blanco"}
validates :apaterno, :presence => true
validates :amaterno, :presence => true
validates_confirmation_of :email
validate :check_password
validates_uniqueness_of :email
validates_uniqueness_of :num_identity

end
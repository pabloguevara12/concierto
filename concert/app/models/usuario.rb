class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add attribute, (options[:message] || "is not an email") unless
      value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  end
end


class Usuario < ActiveRecord::Base
  authenticates_with_sorcery!
 attr_accessible :password, :password_confirmation, :crypted_password, :email, :salt, :name, :apaterno, :amaterno,
   :email_confirmation, :utype_id, :gender, :dtype_id, :num_identity

	has_one :utype

validates :name, :presence => {:message => " no puede estar en blanco"}
validates :apaterno, :presence => true
validates :amaterno, :presence => true

validates :password, :presence => {:message => " No puede estar en blanco"},:confirmation => {:message => " No coinciden"}
validates :email, :presence => {:message => " no puede estar en blanco"},:confirmation => {:message => "No coinciden"},:uniqueness => {:message => "Usuario ya existe"}


 end





class Usuario < ActiveRecord::Base
authenticates_with_sorcery!
 attr_accessible :password, :password_confirmation, :crypted_password, :email, :salt, :name, :apaterno, :amaterno,
   :email_confirmation, :utype_id, :gender, :dtype_id, :num_identity

	has_one :utype
    has_and_belongs_to_many :band

validates :name, :presence => {:message => " no puede estar en blanco"}
validates :apaterno, :presence => true
validates :amaterno, :presence => true
validates_confirmation_of :email
validate :check_password
validates_uniqueness_of :email
validates_uniqueness_of :num_identity


has_many :band_usuarios
has_many :bands, :through => :band_usuarios

has_many :name_concerts

#validates :password, :presence => {:message => " No puede estar en blanco"},:confirmation => {:message => " No coinciden"}
#validates :email, :presence => {:message => " no puede estar en blanco"},:confirmation => {:message => "No coinciden"},:uniqueness => {:message => "Usuario ya existe"}

def check_password
    if self.new_record?
      errors.add(:base, "Password can't be blank") if self.password.blank?
      errors.add(:base, "Password and confirmation does not match") unless self.password == self.password_confirmation
      errors.add(:base, "Password must be at least 8 chars long") if self.password.to_s.size.to_i < 4
    else
      if self.password.blank?
        errors.add(:base, "Password can't be blank") if self.password.blank?
      else
        errors.add(:base, "Password and confirmation does not match") unless self.password == self.password_confirmation
        errors.add(:base, "Password must be at least 8 chars long") if self.password.to_s.size.to_i < 4
      end
    end
  end

 end




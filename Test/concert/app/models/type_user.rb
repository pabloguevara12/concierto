class TypeUser < ActiveRecord::Base
  attr_accessible :clave, :correo, :finicio, :nombre, :rol_defecto, :tur_id
end

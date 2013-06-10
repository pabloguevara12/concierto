class Role < ActiveRecord::Base
  attr_accessible :rol, :rol_id
  belongs_to :usuario
end

class BandUsuario < ActiveRecord::Base
  attr_accessible :band_id, :usuario_id
  belongs_to :band
  belongs_to :usuario
end

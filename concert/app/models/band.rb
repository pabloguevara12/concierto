class Band < ActiveRecord::Base
  attr_accessible :band_id, :member, :name, :style, :usuario_ids
  has_and_belongs_to_many :name_concert
  has_many :band_usuarios
  has_many :usuarios, :through => :band_usuarios
end

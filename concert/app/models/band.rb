class Band < ActiveRecord::Base
  attr_accessible :band_id, :member, :name, :style, :usuario_ids
  has_and_belongs_to_many :name_concert
  has_and_belongs_to_many :usuario

validates_presence_of :name, :message => '^ Debes ingresar un nombre de Banda'
#validates_presence_of :band_id, :message => '^ Debes elegir un miembro'


  has_many :band_usuarios
  has_many :usuarios, :through => :band_usuarios

  has_many :name_concerts

end

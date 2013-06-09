class NameConcert < ActiveRecord::Base
attr_accessible :concert_id, :final_date, :user_id, :place, :start_date, :band_id

has_many :bands
has_many :usuarios

belongs_to :usaurio
belongs_to :band
belongs_to :site


validates_presence_of :place, :message => '^ Debes ingresar un Lugar'
validates_presence_of :band, :message => '^ Debes elegir una Banda'
validates_presence_of :person, :message => '^ Debes elegir una Persona'
#validates_presence_of :map_url, :message => '^ Debes ingresar un URL de Google MAPS'
#validates_presence_of :district_id, :message => '^ Debes Elegir un distrito'


end

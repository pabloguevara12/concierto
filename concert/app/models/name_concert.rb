class NameConcert < ActiveRecord::Base
  attr_accessible :end_date, :name, :start_date, :site_id, :band_id, :usuario_id
  belongs_to :site
  belongs_to :band
  belongs_to :usuario
end

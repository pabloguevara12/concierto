class Site < ActiveRecord::Base
  attr_accessible :address, :district, :map, :name, :phone, :site_id
  #validates_presence_of :map
  validates :name, :address, :district, :presence => true

end

class Site < ActiveRecord::Base
  attr_accessible :address, :district, :name, :phone, :site_id, :latitude, :longitude
  #validates_presence_of :map
  validates :name, :address, :presence => true
  validates_uniqueness_of :name

  acts_as_gmappable :process_geocoding => false
  acts_as_gmappable :validation => true
  
  has_many :name_concerts

  def gmaps4rails_address
  	"#{self.address}, Lima, Peru"
  end	

  def gmaps4rails_infowindow
	      "<h1>#{name} </h1>"
  end



end

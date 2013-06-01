class Site < ActiveRecord::Base
  attr_accessible :address, :district, :map, :name, :phone, :site_id
end

class Utype < ActiveRecord::Base
  attr_accessible :id, :tdu
	belongs_to :user
	

end

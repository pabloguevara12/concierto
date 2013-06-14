class Goconcert < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :name_concert
  attr_accessible :data
end

class Band < ActiveRecord::Base
  attr_accessible :band_id, :member, :name, :style
  has_many :concerts
end

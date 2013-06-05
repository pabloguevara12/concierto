class Band < ActiveRecord::Base
  attr_accessible :band_id, :member, :name, :style
  has_and_belongs_to_many :name_concert
end

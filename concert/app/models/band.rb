class Band < ActiveRecord::Base
  attr_accessible :band_id, :member, :name, :style, :user_ids
  has_and_belongs_to_many :name_concert
  has_many :user_bands
  has_many :users, :through => :user_bands
end

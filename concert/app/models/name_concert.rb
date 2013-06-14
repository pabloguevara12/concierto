class NameConcert < ActiveRecord::Base
  belongs_to :site
  belongs_to :band
  belongs_to :usuario
  attr_accessible :end_date, :name, :start_date
end

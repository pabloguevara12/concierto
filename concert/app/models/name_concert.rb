class NameConcert < ActiveRecord::Base
  attr_accessible :band, :concert_id, :final_date, :person, :place, :start_date
end

class Viewer < ActiveRecord::Base
  attr_accessible :concert_id, :integer, :integer, :user_id, :v_id
end

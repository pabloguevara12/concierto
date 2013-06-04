class Dtype < ActiveRecord::Base
  attr_accessible :id, :tdd
  belongs_to :utype
end

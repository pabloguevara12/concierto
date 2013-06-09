class User < ActiveRecord::Base
  attr_accessible :amaterno, :apaterno, :doc_identity, :dtype_id, :gender, :mail1, :mail2, :name, :num_identity, :string, :user_id, :utype_id
  has_many :user_bands
  has_many :bands, :through => :user_bands
end

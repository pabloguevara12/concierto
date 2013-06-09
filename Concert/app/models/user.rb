class User < ActiveRecord::Base
<<<<<<< HEAD
  authenticates_with_sorcery!
  # attr_accessible :title, :body
=======
  attr_accessible :amaterno, :apaterno, :doc_identity, :dtype_id, :gender, :mail1, :mail2, :name, :num_identity, :string, :user_id, :utype_id
  has_many :user_bands
  has_many :bands, :through => :user_bands
>>>>>>> 141431b5f922ce771b6eadb7e633ad571ca5f874
end

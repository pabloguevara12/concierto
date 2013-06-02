class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :user_id
      t.integer :dtype_id
      t.integer :utype_id
      t.string :name
      t.string :apaterno
      t.string :amaterno
      t.string :gender
      t.string :doc_identity
      t.string :num_identity
      t.string :mail1
      t.string :mail2
      t.string :string

      t.timestamps
    end
  end
end

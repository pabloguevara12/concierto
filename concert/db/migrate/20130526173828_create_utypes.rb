class CreateUtypes < ActiveRecord::Migration
  def change
    create_table :utypes do |t|
      t.integer :id
      t.string :tdu

      t.timestamps
    end
  end
end

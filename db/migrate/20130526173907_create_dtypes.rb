class CreateDtypes < ActiveRecord::Migration
  def change
    create_table :dtypes do |t|
      t.integer :id
      t.string :tdd

      t.timestamps
    end
  end
end

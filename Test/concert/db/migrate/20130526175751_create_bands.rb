class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.integer :band_id
      t.string :name
      t.string :member
      t.string :style

      t.timestamps
    end
  end
end

class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.integer :site_id
      t.string :name
      t.string :address
      t.string :district
      t.string :map
      t.string :phone

      t.timestamps
    end
  end
end

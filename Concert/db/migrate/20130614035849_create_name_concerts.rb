class CreateNameConcerts < ActiveRecord::Migration
  def change
    create_table :name_concerts do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.references :site
      t.references :band
      t.references :usuario

      t.timestamps
    end
    add_index :name_concerts, :site_id
    add_index :name_concerts, :band_id
    add_index :name_concerts, :usuario_id
  end
end

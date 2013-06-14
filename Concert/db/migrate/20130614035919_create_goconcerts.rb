class CreateGoconcerts < ActiveRecord::Migration
  def change
    create_table :goconcerts do |t|
      t.string :data
      t.references :usuario
      t.references :name_concert

      t.timestamps
    end
    add_index :goconcerts, :usuario_id
    add_index :goconcerts, :name_concert_id
  end
end

class CreateNameConcerts < ActiveRecord::Migration
  def change
    create_table :name_concerts do |t|
      t.integer :concert_id
      t.string :place
      t.string :band
      t.string :person
      t.datetime :start_date
      t.datetime :final_date

      t.timestamps
    end
  end
end

class CreateViewers < ActiveRecord::Migration
  def change
    create_table :viewers do |t|
      t.integer :v_id
      t.string :concert_id
      t.string :integer
      t.string :user_id
      t.string :integer

      t.timestamps
    end
  end
end

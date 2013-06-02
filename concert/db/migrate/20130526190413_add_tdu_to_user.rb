class AddTduToUser < ActiveRecord::Migration
  def change
    add_column :users, :tdu, :string
  end
end

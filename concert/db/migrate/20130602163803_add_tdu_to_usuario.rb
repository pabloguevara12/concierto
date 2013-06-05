class AddTduToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :tdu, :integer
  end
end

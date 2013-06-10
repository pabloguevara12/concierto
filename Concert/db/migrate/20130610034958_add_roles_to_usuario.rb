class AddRolesToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :roles, :text
  end
end

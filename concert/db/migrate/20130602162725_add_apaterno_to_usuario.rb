class AddApaternoToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :apaterno, :string
  end
end

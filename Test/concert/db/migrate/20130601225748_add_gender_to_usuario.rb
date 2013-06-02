class AddGenderToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :gender, :string
  end
end

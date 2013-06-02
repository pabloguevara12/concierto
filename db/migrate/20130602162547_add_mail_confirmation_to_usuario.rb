class AddMailConfirmationToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :mail_confirmation, :string
  end
end

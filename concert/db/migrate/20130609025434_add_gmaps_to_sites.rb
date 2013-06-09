class AddGmapsToSites < ActiveRecord::Migration
  def change
    add_column :sites, :gmaps, :boolean
  end
end

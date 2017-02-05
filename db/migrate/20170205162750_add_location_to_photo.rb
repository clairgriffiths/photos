class AddLocationToPhoto < ActiveRecord::Migration
  
  def change
    add_column :photos, :latitude, :string
    add_column :photos, :longitude, :string
  end
  
end

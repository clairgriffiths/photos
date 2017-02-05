class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string  :farm_id
      t.string  :server_id
      t.string  :flickrphoto_id
      t.string   :secret

      t.timestamps null: false
    end
  end
end

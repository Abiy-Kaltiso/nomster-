class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
    	t.string :picture 
    	t.text :caption
    	t.integer :place_id

      t.timestamps
    end

    add_index :photos, :caption
  end
end

class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
    	t.string :property_type
    	t.string :size
    	t.string :own_home
    	t.string :guest_quantity
    	t.string :bedroom_quantity
    	t.string :bed_quantity
    	t.string :bathroom_quantity
    	t.string :country
    	t.string :street_name
    	t.string :property_name
    	t.string :city
    	t.string :state 
    	t.string :zip_code
    	t.string :amenities
    	t.string :spaces_can_use
    	t.references :user

      t.timestamps
    end
  end
end

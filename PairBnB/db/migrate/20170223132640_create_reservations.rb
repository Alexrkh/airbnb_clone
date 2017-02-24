class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
    	t.string :guest_quantity
    	t.integer :price_night
    	t.integer :service_fee
    	t.integer :travel_credit
    	t.integer :total
    	t.string :check_in
    	t.string :check_out

      t.timestamps
    end
  end
end

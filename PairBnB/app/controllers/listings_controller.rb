class ListingsController < ApplicationController

	def create
		@listing = Listing.new(listing_params)
    	@listing.user_id = current_user.id
          if @listing.save
              flash[:success] = "Successfully added a new listing!"
              redirect_to listing_path(@listing)
           else
              flash[:danger] = @listing.errors.full_messages.join(', ')
             redirect_to root
	       end
    end

    def show
    	@listing = Listing.find(params[:id])
    end

	def new
		@listing = Listing.new
	end

	private
	def listing_params

		params.require(:listing).permit(:property_type, :bedroom_quantity, :bed_quantity, :own_home, :guest_quantity, :country, :street_name, :property_name, :city, :state, :zip_code, :amenities, :spaces_can_use, :price_night)
	end
end

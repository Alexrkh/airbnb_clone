class ReservationsController < ApplicationController
	def new
		@listing = Listing.all	
	end
end

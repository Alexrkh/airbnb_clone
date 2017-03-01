class ReservationsController < ApplicationController
	def new
		@listing = Listing.all	
	end

	def index
	end
end

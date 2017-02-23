class ListingsController < ApplicationController

	def create
		@listing = Listing.new(listing_param)
	end

	def new
		@listing = Listing.new
	end
end

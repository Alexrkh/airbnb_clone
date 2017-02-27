class StaticPagesController < ApplicationController
	def home
		@listings = Listing.all.order(created_at: :desc).limit(3) 
	end
end

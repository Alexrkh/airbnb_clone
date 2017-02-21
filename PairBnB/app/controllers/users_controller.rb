class UsersController < ApplicationController
   def list
   end
   
   def show
   	redirect_to sign_in_path
   end
   
   def new
   end
   
   def create
   	redirect_to '/sign_up'
   end
   
   def edit
   end
   
   def update
   end
   
   def delete
   	redirect_to '/sign_out'
   end
end

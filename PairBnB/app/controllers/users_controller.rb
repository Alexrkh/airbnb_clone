class UsersController < Clearance::UsersController

  def create
     @user = user_from_params

     respond_to do |format|
       if @user.save
         # Tell the UserMailer to send a welcome email after save
         UserMailer.welcome_email(@user).deliver_now
         # UserMailer.welcome_email(@user).deliver_now

         format.html { redirect_to root_path, notice: 'User was successfully created.' }
         format.json { render json: @user, status: :created, location: @user }
       else
         format.html { redirect_to new_user_path, notice: @user.errors.full_messages.join(', ')}
         format.json { render json: @user.errors, status: :unprocessable_entity }
       end
     end
   end


end

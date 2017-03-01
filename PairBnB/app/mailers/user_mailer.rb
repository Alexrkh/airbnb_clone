class UserMailer < ApplicationMailer
	default from: 'iamsuperbot123@gmail.com'

	def welcome_email(user)
		@user = user
		@url = 'localhost:3000'
		mail(to: @user.email, subject: 'Welcome to my Awesome Site')
	end
end

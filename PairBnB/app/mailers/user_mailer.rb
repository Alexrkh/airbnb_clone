class UserMailer < ApplicationMailer
	default from: 'hello@world.com'

	def welcome_email(user)
		@user = user
		@url = 'localhost:3000'
		mail(to: @user, subject: 'Welcome to my Awesome Site')
	end
end

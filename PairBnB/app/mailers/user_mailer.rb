class UserMailer < ApplicationMailer
	default from: '1337@133.7'

	def welcome_email(user)
		@user = user
		@url = 'localhost:3000'
		mail(to: @user.email, subject: 'Welcome to my Awesome Site')
	end
end

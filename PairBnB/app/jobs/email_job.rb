class EmailJob < ApplicationJob
  queue_as :default

  def perform(user)
  user.send_welcome_email!
  end
  
end

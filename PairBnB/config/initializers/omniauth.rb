Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :facebook,ENV['FACEBOOK_APP_KEY'],ENV['FACEBOOK_APP_KEY']
end

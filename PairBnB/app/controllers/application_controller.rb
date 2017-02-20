class ApplicationController < ActionController::Base
  before_action :require_login
  include Clearance::Controller
  protect_from_forgery with: :exception
end



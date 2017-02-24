class User < ApplicationRecord
  include Clearance::User

  has_many :authentications, :dependent => :destroy
  has_many :listings
  has_many :reservations

  mount_uploader :avatar, AvatarUploader 
  
  def self.create_with_auth_and_hash(authentication, auth_hash)
    
  	user = User.new(first_name: auth_hash[:info][:first_name], last_name: auth_hash[:info][:last_name], 
    email: auth_hash[:info][:email], gender: auth_hash[:extra][:raw_info][:gender])
  	user.authentications << (authentication)
    user.save
    return user
  end

  def fb_token
  	x = self.authentications.where(:provider => :facebook).first
  	return x.token unless x.nil?
  end

  private 

  def password_optional?
    if self.authentications.any?
      true
    else
      false
    end
  end
end

class Listing < ApplicationRecord
	belongs_to :user
    mount_uploader :avatar, AvatarUploader

    def self.search(search)
     where("property_name LIKE ?", "%#{search}%")
     end

end


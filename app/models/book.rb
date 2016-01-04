class Book < ActiveRecord::Base
	validates :name, presence: true,
                    length: { minimum: 5 }
    validates :author, presence: true,
                    length: { minimum: 5 }

    mount_uploader :picture_url, AvatarUploader
   
end

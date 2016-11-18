class Ricetudy < ActiveRecord::Base
     resourcify
  include Authority::Abilities
    mount_uploader :image, AvatarUploader
    has_many :comments
    belongs_to :user

end

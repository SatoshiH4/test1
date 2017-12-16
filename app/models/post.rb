class Post < ApplicationRecord
    belongs_to :user
    validates :plan_name, presence: true
    mount_uploader :image, ImageUploader
end

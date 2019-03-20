class Post < ApplicationRecord
  validates :content , presence: true , length:{maximum: 200}
  validates :picture , presence: true
  belongs_to :user
  mount_uploader :picture, ImageUploader
end

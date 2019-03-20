class Post < ApplicationRecord
  validates :content , length:{maximum: 200}
  validates :picture , presence: true
  belongs_to :user
  has_many :favorites , dependent: :destroy
  has_many :favotite_users , through: :favorites , source: :user
  mount_uploader :picture, ImageUploader
end

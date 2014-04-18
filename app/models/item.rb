class Item < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true
  validates :image, presence: true
  validates :description, presence: true, length: { minimum: 6 }

  mount_uploader :image, ItemImageUploader
end

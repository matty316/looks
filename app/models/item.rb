class Item < ActiveRecord::Base
  belongs_to :user
  default_scope { order 'created_at DESC' }
  validates :name, presence: true
  validates :image, presence: true
  validates :description, presence: true, length: { minimum: 6 }

  mount_uploader :image, ItemImageUploader
end

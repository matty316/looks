class Item < ActiveRecord::Base
  belongs_to :user
  default_scope { order 'created_at DESC' }
  validates :name, presence: true
  validates :image, presence: true
  validates :description, presence: true, length: { minimum: 6 }

  mount_uploader :image, ItemImageUploader

  def self.search(search)
      where('lower(name) LIKE ? OR lower(description) LIKE ? OR lower(store) LIKE ?', "%#{search.downcase}%", "%#{search.downcase}%", "%#{search.downcase}%")
  end
end

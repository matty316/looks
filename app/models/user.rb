class User < ActiveRecord::Base
  before_save: { username.downcase }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username,
            presence: true,
            length: { minimum: 4 },
            uniqueness: { case_sensitive: false }

  mount_uploader: :image, ProfilePictureUploader
end

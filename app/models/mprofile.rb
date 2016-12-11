class Mprofile < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :sections
  has_many :enrollments
  validates :first_name, presence: true
  validates :bio, presence: true
  validates :email, presence: true
end

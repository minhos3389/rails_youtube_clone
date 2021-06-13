class Video < ApplicationRecord
  mount_uploader :file, FileUploader
  mount_uploader :image, ImageUploader
  belongs_to :user
  # comments와 1대 다 관계, 의존성으로 인한 삭제
  has_many :comments, dependent: :destroy
end

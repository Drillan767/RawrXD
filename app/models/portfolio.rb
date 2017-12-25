class Portfolio < ApplicationRecord
  extend FriendlyId

  friendly_id :title, use: :slugged
  mount_uploader :thumbnail, ThumbnailsUploader
  mount_uploaders :illustrations, IllustrationsUploader

end
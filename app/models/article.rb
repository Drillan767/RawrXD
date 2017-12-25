class Article < ApplicationRecord
  extend FriendlyId

  friendly_id :title, use: :slugged
  mount_uploader :image, ArticlesUploader

end
class Article < ApplicationRecord
  mount_uploader :image, ArticlesUploader

end
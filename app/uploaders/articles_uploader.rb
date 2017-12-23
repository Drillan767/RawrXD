class ArticlesUploader < CarrierWave::Uploader::Base

  storage :file

  def store_dir
    "uploads/articles/#{model.id}"
  end

end

class ThumbnailsUploader < CarrierWave::Uploader::Base

  storage :file

  def store_dir
    "uploads/portfolio/#{model.id}"
  end
end

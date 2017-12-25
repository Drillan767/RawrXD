class IllustrationsUploader < CarrierWave::Uploader::Base

  storage :file

  def store_dir
    "uploads/#{model.id}/illustrations"
  end

end

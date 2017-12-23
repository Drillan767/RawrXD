json.extract! article, :id, :title, :image, :content, :slug, :public, :created_at, :updated_at
json.url article_url(article, format: :json)
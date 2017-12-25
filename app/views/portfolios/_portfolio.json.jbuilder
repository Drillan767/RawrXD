json.extract! portfolio, :id, :created_at, :updated_at, :title, :creation_time,
              :public, :content, :illustrations,
              :slug, :thumbnail, :website, :tags
json.url portfolio_url(portfolio, format: :json)

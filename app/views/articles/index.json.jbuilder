json.array!(@articles) do |article|
  json.extract! article, :title, :body, :description, :image, :link
  json.url article_url(article, format: :json)
end

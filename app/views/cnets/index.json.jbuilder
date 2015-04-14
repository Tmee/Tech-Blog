json.array!(@stories) do |story|
  json.extract! story, :header, :detail, :image, :link
end

json.array!(@images) do |image|
  json.extract! image, :name, :hsize, :hidden
  json.url image_url(image, format: :json)
end

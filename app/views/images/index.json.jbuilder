json.array!(@images) do |image|
  json.extract! image, :name, :size, :hidden
  json.url image_url(image, format: :json)
end

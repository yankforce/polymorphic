json.array!(@slideshows) do |slideshow|
  json.extract! slideshow, :name, :content
  json.url slideshow_url(slideshow, format: :json)
end

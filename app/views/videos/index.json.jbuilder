json.array!(@videos) do |video|
  json.extract! video, :name, :hsize
  json.url video_url(video, format: :json)
end

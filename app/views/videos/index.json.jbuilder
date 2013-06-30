json.array!(@videos) do |video|
  json.extract! video, :name, :size
  json.url video_url(video, format: :json)
end

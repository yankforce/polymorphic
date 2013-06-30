json.array!(@issues) do |issue|
  json.extract! issue, :title, :content
  json.url issue_url(issue, format: :json)
end

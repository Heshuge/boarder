json.array!(@ladings) do |lading|
  json.extract! lading, :id
  json.url lading_url(lading, format: :json)
end

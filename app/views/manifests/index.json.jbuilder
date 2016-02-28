json.array!(@manifests) do |manifest|
  json.extract! manifest, :id
  json.url manifest_url(manifest, format: :json)
end

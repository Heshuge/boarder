json.array!(@manifests) do |manifest|
  json.extract! manifest, :id, :nameimportingconvevance, :namepersonincharge, :nameaddressowner, :foreignportoflanding, :usportofdestination, :portofarrival, :dateofarrival, :billoflading, :carnumber, :numberandgrossweight, :nameofconsignee
  json.url manifest_url(manifest, format: :json)
end

json.array!(@dodos) do |dodo|
  json.extract! dodo, :id, :name
  json.url dodo_url(dodo, format: :json)
end

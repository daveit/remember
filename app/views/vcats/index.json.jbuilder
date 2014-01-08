json.array!(@vcats) do |vcat|
  json.extract! vcat, :id, :name
  json.url vcat_url(vcat, format: :json)
end

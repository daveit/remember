json.array!(@com_types) do |com_type|
  json.extract! com_type, :id, :name
  json.url com_type_url(com_type, format: :json)
end

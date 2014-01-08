json.array!(@member_villages) do |member_village|
  json.extract! member_village, :id, :name
  json.url member_village_url(member_village, format: :json)
end

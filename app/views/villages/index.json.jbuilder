json.array!(@villages) do |village|
  json.extract! village, :id, :name, :address, :address2, :suburb_id, :phone, :email, :financial_to, :residents
  json.url village_url(village, format: :json)
end

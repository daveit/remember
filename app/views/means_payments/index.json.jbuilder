json.array!(@means_payments) do |means_payment|
  json.extract! means_payment, :id, :name
  json.url means_payment_url(means_payment, format: :json)
end

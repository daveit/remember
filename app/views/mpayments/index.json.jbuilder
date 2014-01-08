json.array!(@mpayments) do |mpayment|
  json.extract! mpayment, :id, :pdate, :amount, :reference, :details, :MeansPayment_id, :Member_id
  json.url mpayment_url(mpayment, format: :json)
end

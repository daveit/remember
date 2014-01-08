json.array!(@vpayments) do |vpayment|
  json.extract! vpayment, :id, :pdate, :amount, :reference, :details, :MeansPayment_id, :Village_id
  json.url vpayment_url(vpayment, format: :json)
end

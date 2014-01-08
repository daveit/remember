json.array!(@committees) do |committee|
  json.extract! committee, :id, :wphone, :hphone, :fax, :mobile, :email, :notes, :village_id, :com_type_id
  json.url committee_url(committee, format: :json)
end

json.array!(@jerryisms) do |jerryism|
  json.extract! jerryism, :id, :text, :created_by
  json.url jerryism_url(jerryism, format: :json)
end

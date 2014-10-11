json.array!(@publishers) do |publisher|
  json.extract! publisher, :id, :publisherid, :name, :logo, :url, :blurb
  json.url publisher_url(publisher, format: :json)
end

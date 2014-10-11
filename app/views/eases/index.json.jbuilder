json.array!(@eases) do |ease|
  json.extract! ease, :id, :name
  json.url ease_url(ease, format: :json)
end

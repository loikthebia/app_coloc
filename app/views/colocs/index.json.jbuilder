json.array!(@colocs) do |coloc|
  json.extract! coloc, :id, :adress
  json.url coloc_url(coloc, format: :json)
end

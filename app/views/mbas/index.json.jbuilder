json.array!(@mbas) do |mba|
  json.extract! mba, :id, :name, :school
  json.url mba_url(mba, format: :json)
end

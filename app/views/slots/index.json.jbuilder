json.array!(@slots) do |slot|
  json.extract! slot, :id, :appointment, :appointmenttype
  json.url slot_url(slot, format: :json)
end

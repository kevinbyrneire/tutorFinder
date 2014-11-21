json.array!(@bookins) do |bookin|
  json.extract! bookin, :id, :tutor_id
  json.url bookin_url(bookin, format: :json)
end

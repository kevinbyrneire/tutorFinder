json.array!(@tutors) do |tutor|
  json.extract! tutor, :id, :firstname, :lastname, :age, :phone, :location, :email, :subjects
  json.url tutor_url(tutor, format: :json)
end

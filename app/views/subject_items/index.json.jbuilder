json.array!(@subject_items) do |subject_item|
  json.extract! subject_item, :id, :tutors_id, :subjects_id
  json.url subject_item_url(subject_item, format: :json)
end

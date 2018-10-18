json.array! @people.each do |people|
  json.id people.id
  json.first_name people.first_name
  json.middle_name people.middle_name
  json.last_name people.last_name
  json.phone people.phone_number
  json.bio people.biomid_
end
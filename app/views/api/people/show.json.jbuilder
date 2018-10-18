json.id @person.id
json.first_name @person.first_name
json.last_name @person.last_name
json.middle_name @person.middle_name
json.phone @person.phone_number
json.bio @person.bio
json.updated_at @person.friendly_updated_at #custom model method
json.full_name @person.full_name #custom model method
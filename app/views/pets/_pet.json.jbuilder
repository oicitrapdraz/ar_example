json.extract! pet, :id, :name, :animal_species, :age, :user_id, :created_at, :updated_at
json.url pet_url(pet, format: :json)

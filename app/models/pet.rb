class Pet < ActiveResource::Base
  include Resourceable

  belongs_to :user

  schema do
    string 'name', 'animal_species'
    integer 'age'
    datetime 'created_at', 'updated_at'
  end
end

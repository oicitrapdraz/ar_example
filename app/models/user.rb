class User < ActiveResource::Base
  include Resourceable
  before_save :validate

  has_many :pets

  schema do
    string 'email', 'first_name', 'last_name'
    integer 'age'
  end
end

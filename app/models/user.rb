class User < ActiveResource::Base
  include Resourceable
  before_save :validate

  has_many :pets


end

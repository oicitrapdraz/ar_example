module Resourceable
  extend ActiveSupport::Concern

  included do
    self.site = Rails.application.credentials.config[:api_url]
  end
end

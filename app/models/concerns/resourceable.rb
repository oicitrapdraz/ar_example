module Resourceable
  extend ActiveSupport::Concern

  include RegisterActivity::TrackedActiveResource

  included do
    self.site = Rails.application.credentials.config[:api_url]
    self.patch_updates = true
  end
end

# frozen_string_literal: true

RegisterActivity.configure do |config|
  config.owner_method = 'current_admin'
  config.recipient_class = Admin
  config.recipient_attr = 'admin_id'
end

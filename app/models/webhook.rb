class Webhook < ApplicationRecord
  belongs_to :notification, inverse_of: :webhooks
end

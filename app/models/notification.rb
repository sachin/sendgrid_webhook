class Notification < ApplicationRecord

  # establish_connection(YAML::load('database.yml')[RAILS_ENV +'_notification'])
  belongs_to :campaign, inverse_of: :notifications
  has_many :webhooks, inverse_of: :notification, dependent: :delete_all

  after_commit :deliver_notification, on: :create

  private

  def deliver_notification
    response = UserNotifierMailer.send_signup_email(email).deliver
    self.update_column('send_grid_identifier', response.message_id)
  end
end

class SendgridController < ApplicationController

  skip_before_action :verify_authenticity_token, only: [:webhooks]
  def webhooks

    smtp_id = params['_json'].first['smtp-id'].scan(/<(.*)>/).last.first rescue nil
    logger.info "smtp id #{smtp_id}---"
    if smtp_id && notification = Notification.where(send_grid_identifier: smtp_id).take
      params['_json'].each do|payload|
        notification.webhooks.create(event: payload['event'], payload: payload)
      end
    end
    head :ok
  end
end

class CreateWebhooks < ActiveRecord::Migration[5.2]
  def change
    create_table :webhooks do |t|
      t.text :payload
      t.integer :notification_id
      t.string :event
      t.timestamps
    end
  end
end

class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.string :email
      t.integer :campaign_id
      t.string :send_grid_identifier
      t.string :content
      t.timestamps
    end
  end
end

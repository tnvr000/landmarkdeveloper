class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.string :description
      t.boolean :seen
      t.integer :client_id

      t.timestamps
    end
  end
end

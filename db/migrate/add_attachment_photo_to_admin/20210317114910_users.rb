class AddAttachmentPhotoToAdmin::Users < ActiveRecord::Migration[5.2]
  def self.up
    change_table :admin_users do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :admin_users, :photo
  end
end

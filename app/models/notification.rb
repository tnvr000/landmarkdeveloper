class Notification < ApplicationRecord
  belongs_to :client
  scope :new_notifications, -> { where('seen = ? ', false) }

  class << self
    def create_notification client
      notification = new(seen: false, client_id: client.id)
      notification.description = "#{client.name} wants you contact you."
      notification.description << " #{client.name} is interested in #{client.note}." if client.note.present?
      notification.save
    end
  end
end

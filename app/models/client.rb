class Client < ApplicationRecord
  include AuthenticationHelper
  validates :name, presence: true
  validates :contact_no, presence: true
  validates :contact_no, format: { with: AuthenticationHelper.contact_no_regex, message: AuthenticationHelper.bad_contact_no_message }
  validates :email, presence: true
  validates :email, format: { with: AuthenticationHelper.email_regex, message: AuthenticationHelper.bad_email_message }
end

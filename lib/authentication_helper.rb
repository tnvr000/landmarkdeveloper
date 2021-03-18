module AuthenticationHelper
  

  class << self
    def email_regex
      /\A[\w\.%\+\-]+@(?:[A-Z0-9\-]+\.)+(?:[A-Z]{2}|com|org|net|edu|gov|mil|biz|info|mobi|name|aero|jobs|museum)\z/i
    end
  
    def bad_email_message
      'Please enter a valid Email Address.'
    end

    def contact_no_regex
      /\A\d{10}\z/
    end

    def bad_contact_no_message
      'Please enter a valid Phone Number'
    end
  end
end

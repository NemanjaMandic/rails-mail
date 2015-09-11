require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module Workspace
  class Application < Rails::Application
  
    
    ActionMailer::Base.smtp_settings = {
      
      :address        => 'smtp.gmail.com',
      :domain         => 'mail.google.com',
      :port           => 2587,
      :user_name      => "mymailerapp@gmail.com",
      :password       => "weakpass",
      :authentication => 'login',
      :enable_starttls_auto => true
     }

    
    config.active_record.raise_in_transactional_callbacks = true
  end
end

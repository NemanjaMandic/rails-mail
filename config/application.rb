require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module Workspace
  class Application < Rails::Application
  
    
    ActionMailer::Base.smtp_settings = {
      
      :port           => '2587',
      :address        => 'smtp.mandrillapp.com',
      :user_name      => "nemanjans84@gmail.com",
      :password       => "5iJ0-C8RdAx5ZV_Sz-isuA",
      :authentication => :plain
    
     }

    
    config.active_record.raise_in_transactional_callbacks = true
  end
end

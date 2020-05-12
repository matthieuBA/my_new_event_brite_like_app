# Load the Rails application.
require_relative 'application'


ActionMailer::Base.smtp_settings =   {
    # :address            => 'smtp.gmail.com',
    # :port               => 587,
    # :domain             => 'gmail.com', #you can also use google.com
    # :authentication     => :plain,
    # :enable_starttls_auto => true,
    # :user_name          => ENV['GMAIL_LOGIN'],
    # :password           => ENV['GMAIL_PWD']
    port: 587,
    address: 'smtp.gmail.com',
    user_name: ENV['GMAIL_LOGIN'],
    password: ENV['GMAIL_PWD'],
    authentication: :plain,
    enable_starttls_auto: true
  }
  
  
# Initialize the Rails application.
Rails.application.initialize!

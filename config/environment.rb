# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  address: 'smtp.gmail.com',
  port: 465,
  domain: 'gmail.com',
  user_name: Rails.application.credentials.gmail.fetch(:user_name),
  password: Rails.application.credentials.gmail.fetch(:password),
  authentication: 'plain',
  ssl: true,
  tsl: true,
  enable_starttls_auto: true
}
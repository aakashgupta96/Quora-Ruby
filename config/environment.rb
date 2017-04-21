# Load the Rails application.
require File.expand_path('../application', __FILE__)
# Initialize the Rails application.
ActionMailer::Base.smtp_settings = {
  address:              'smtp.gmail.com',
  port:                 587,
  domain:               'gmail.com',
  user_name:            'alchemyaug2016@gmail.com',
  password:             'test@983',
  authentication:       :plain,
  enable_starttls_auto: true
}
Rails.application.initialize!
require 'rmagick'
require 'carrierwave/orm/activerecord'


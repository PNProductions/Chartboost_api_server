require 'factory_girl_rails'
require 'support/request_helpers'
require 'rails_helper'

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
  config.include Requests::JsonHelpers, type: :controller
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

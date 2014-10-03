class ApplicationController < ActionController::API
  include ActionController::RequestForgeryProtection
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
end

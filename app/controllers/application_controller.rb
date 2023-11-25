class ApplicationController < ActionController::Base
  include Pundit::Authorization
  def current_user
    "user1"
  end
end

# frozen_string_literal: true

# The base controller for the application.
# Handles authentication and shared application-level behavior.
class ApplicationController < ActionController::Base
  before_action :authenticate_user!
end

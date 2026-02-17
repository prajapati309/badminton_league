# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Users Management', type: :request do
  let!(:admin) do
    User.create!(email: 'admin@test.com', password: 'password', role: :admin)
  end

  let!(:coach) do
    User.create!(email: 'coach@test.com', password: 'password', role: :coach)
  end

  describe 'GET /users' do
    it 'allows admin access' do
      sign_in admin
      get users_path
      expect(response).to have_http_status(:ok)
    end

    it 'redirects non-admin users' do
      sign_in coach
      get users_path
      expect(response).to redirect_to(root_path)
    end
  end
end

require 'rails_helper'

RSpec.describe "Home page", type: :request do
  describe 'GET /' do
    before do
      get '/'
    end

    it { expect(response).to have_http_status(:success) }
  end
end

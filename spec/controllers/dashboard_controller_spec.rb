require 'rails_helper'

RSpec.describe DashboardController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
    
    it '#index' do 
      VCR.user_cassette "openweathermap/weather", record: :new_episodes do 
        get :index
      end
      expect(response).to have_http_status(200)
    end 
  end
end

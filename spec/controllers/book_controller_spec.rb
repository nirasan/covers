require 'rails_helper'

RSpec.describe BookController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #request_amazon" do
    it "returns http success" do
      get :request_amazon
      expect(response).to have_http_status(:success)
    end
  end

end

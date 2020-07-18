require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
  let(:movie) { FactoryGirl.create(:movie) }
  let(:user)  { FactoryGirl.create(:user, :with_movies) }
  
  before do
    allow(controller).to receive(:authenticate_user!).and_return(true)
    allow(controller).to receive(:current_user).and_return(user)
    request.env["HTTP_ACCEPT"] = 'application/json'
  end
  describe '#index' do
    context 'when user longged in' do
      it 'returns user specific movies' do
        get :index
        expect(JSON.parse(response.body)).to eql JSON.parse(user.movies.to_json)
        expect(JSON.parse(response.body).count).to eql user.movies.count
      end
    end
    context 'when user not longged in' do
      it 'returns paginated movies' do
        FactoryGirl.create_list(:movie, 4) 
        allow(controller).to receive(:current_user).and_return(nil)
        get :index
        expect(JSON.parse(response.body).count).to eql 3
      end
    end
  end

  describe '#create' do
    context 'create a movie with valid params' do
      it 'returns created status' do
        post :create, params: { movie: FactoryGirl.attributes_for(:movie) }
        expect(response).to have_http_status(:created)
      end
    end
    context 'With invalid params' do
      it 'returns unprocessable_entity' do
        post :create, params: { movie: FactoryGirl.attributes_for(:movie, video_url: 'abc') }
        expect(JSON.parse(response.body)['video_url']).to eql ["is invalid"]
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
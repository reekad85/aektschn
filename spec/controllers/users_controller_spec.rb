require 'rails_helper'

describe UsersController, :type => :controller do

	let(:user_2) { User.create!(email: 'rimu@example.com', password: '0987654321') }
	let(:user) { User.create!(email: 'rumi@example.com', password: '0987654321') }
	#@user = FactoryGirl.create(:user)
	

	describe 'GET #show', :type => :controller do
		context 'User is logged in' do
			before do
				sign_in user
			end

			it 'loads correct user details' do
				get :show, id: user.id
				expect(response).to have_http_status(200)
				expect(assigns(:user)).to eq user
			end

			it 'does not load user_2 show' do
				get :show, id: user_2.id
				expect(response).to have_http_status(302)
				expect(response).to redirect_to(root_path)
			end
		end

		context 'No User is logged in' do
			it 'redirects to login' do
        		get :show, id: user.id
        		expect(response).to redirect_to(new_user_session_path)
      		end
    	end
	end
end
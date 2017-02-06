require 'rails_helper'

describe UsersController, :type => :controller do

	let(:user_2) { User.create!(email: 'reem@example.com', password: '0987654321') }
	let(:user) { User.create!(email: 'peter@example.com', password: '1234567890') }
	

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
		end

		context 'No User is logged in' do
			it 'redirects to login' do
        get :show, id: user.id
        expect(response).to redirect_to(new_user_session_path)
      end
    end
	end
end
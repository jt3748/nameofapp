require 'rails_helper'

describe UsersController, type: :controller do
  let(:user) {User.create!(email:"user@email.com", password:"password", password_confirmation: "password" )}
  let(:user_second) { User.create!(email:"second_user@email.com", password: "password", first_name: "SecondUser", last_name: "LastName", confirmed_at: Time.now) }
  let(:user_admin) { User.create!(email:"admin@email.com", password: "password", first_name: "Admin", last_name: "LastName", confirmed_at: Time.now, admin: true) }

  describe 'GET #show' do
    context 'when a user is logged in' do

      before do
        sign_in user
      end

      it "loads correct user details" do
        get :show, params: {id: user.id}
        expect(response).to be_ok
        expect(assigns(:user)).to eq user
      end
    end

      context 'when a user is not logged in' do
        it 'redirects to login' do
         get :show, params: { id: user.id }
         expect(response).to be_ok
        end
      end
  end
end

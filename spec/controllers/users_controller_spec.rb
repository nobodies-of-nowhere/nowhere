require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:current_user) { User.create email: 'a@a.com', password: 'password' }
  let(:user)         { User.new email: 'b@b.com', password: 'password' }

  context 'when signed in' do
    before { sign_in current_user }

    describe '#index' do
      it 'assigns all users' do
        get :index
        expect(assigns['users']).to eq [current_user]
      end
    end

    describe '#new' do
      it 'assigns a new user' do
        get :new
        expect(assigns['user'].created_at).to eq nil
      end
    end

    describe '#create' do
      subject do
        post :create, user: { email: user.email, password: user.password }
      end

      it 'saves a new valid user to the database' do
        expect { subject }.to change { User.count }.by 1
      end

      it 'redirects to index' do
        index = users_path notice: 'User was successfully created.'
        expect(subject).to redirect_to index
      end
    end
  end

  context 'when not signed in' do
    it 'redirects to sign in when you attempt to access #index' do
      get :index
      expect(response).to redirect_to new_user_session_path
    end

    it 'redirects to sign in when you attempt to access #new' do
      get :new
      expect(response).to redirect_to new_user_session_path
    end

    describe '#create' do
      subject do
        post :create, user: { email: user.email, password: user.password }
      end

      it 'does not allow you save a new user to the database' do
        expect { subject }.not_to change { User.count }
      end

      it 'redirects to sign in' do
        expect(subject).to redirect_to new_user_session_path
      end
    end
  end
end

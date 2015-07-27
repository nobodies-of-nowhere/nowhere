require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) { User.new email: 'a@b.com', password: 'password' }

  describe '#index' do
    it 'assigns all users' do
      user.save!
      get :index
      expect(assigns['users']).to eq [user]
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

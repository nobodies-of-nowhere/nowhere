require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { described_class.new email: 'foo@bar.baz', password: 'password' }

  describe 'validations' do
    it 'is valid with an email and password' do
      expect(user).to be_valid
    end

    it 'is invalid without an email' do
      user.email = nil
      expect(user).not_to be_valid
    end

    it 'is invalid with an incorrectly formatted email' do
      user.email = 'not an email'
      expect(user).not_to be_valid
    end

    it 'is invalid without a password' do
      user.password = nil
      expect(user).not_to be_valid
    end

    it 'is invalid with a password short than 8 chars' do
      user.password = 'x' * 7
      expect(user).not_to be_valid
    end
  end
end

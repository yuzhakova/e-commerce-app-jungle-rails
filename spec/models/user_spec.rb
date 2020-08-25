require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

      it "is valid with valid attributes of first/last name, password/password_confirmation and email" do
        @user = User.create(first_name: 'test', last_name: 'test', password: 'test', password_confirmation: 'test', email: 'testing')

        expect(@user).to be_valid
      end

      it "is invalid with first name as nil" do
        @user = User.create(first_name: nil, last_name: 'test', password: 'test', password_confirmation: 'test', email: 'test')
        print @user.errors.full_messages
        expect(@user.errors.full_messages.length).to eql(1)

        expect(@user.errors.full_messages[0] == "First_name can't be blank")
        expect(@user).to_not be_valid
      end

      it "is invalid with last name as nil" do
        @user = User.create(first_name: 'test', last_name: nil, password: 'test', password_confirmation: 'test', email: 'test')

        expect(@user.errors.full_messages.length == 1)
        expect(@user.errors.full_messages[0] == "Last_name can't be blank")
        expect(@user).to_not be_valid
      end

      it "is invalid with no password" do
        @user = User.create(first_name: 'test', last_name: 'test', password: nil, password_confirmation: 'test', email: 'test')

        expect(@user.errors.full_messages.length == 1)
        expect(@user.errors.full_messages[0] == "password can't be blank")
        expect(@user).to_not be_valid
      end

      it "is invalid with no password confirmation" do
        @user = User.create(first_name: 'test', last_name: 'test', password: 'test', password_confirmation: nil, email: 'test')

        expect(@user.errors.full_messages.length == 1)
        expect(@user.errors.full_messages[0] == "Password_confirmation can't be blank")
        expect(@user).to_not be_valid
      end
      
      it "is invalid with no email" do
        @user = User.create(first_name: 'test', last_name: 'test', password: 'test', password_confirmation: 'test', email: nil)

        expect(@user.errors.full_messages.length == 1)
        expect(@user.errors.full_messages[0] == "email can't be blank")
        expect(@user).to_not be_valid
      end



    context "verifying email inputs" do
      it "is invalid if email is already taken" do
        @user = User.create(first_name: 'test', last_name: 'test', password: 'test', password_confirmation: 'test', email: 'test')
        @user2 = User.create(first_name: 'test', last_name: 'test', password: 'test', password_confirmation: 'test', email: 'test')

        expect(@user2.errors.full_messages.length == 1)
        expect(@user2.errors.full_messages[0] == "Email has already been taken")
        expect(@user2).to_not be_valid
      end

      it "is invalid if email is already taken not case sensitive" do
      
      end
    end

    it "is invalid if password and password confirmation do not match" do
      @user = User.create(first_name: 'test', last_name: 'test', password: 'test', password_confirmation: 'tEsT', email: 'test')

      expect(@user.errors.full_messages.length == 1)
      expect(@user.errors.full_messages[0] == "Password Confirmation doesn't match Password")
      expect(@user).to_not be_valid
    end
  end
end
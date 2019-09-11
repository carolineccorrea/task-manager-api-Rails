require 'rails_helper'
#testes de código

RSpec.describe User, type: :model do
  let (:user) { build(:user) }
  # teste com factory girl
  # subject { FactoryGirl.build(:user) }
  # it { expect(subject).to respond_to(:email) }
  # it { expect(subject).to be_valid }

 # context 'when email is a nil' do 
 #   before { user.email = nil }
 #   it { expect(user).not_to be_valid}
 # end

  # teste sem factory girl
  # it {expected.to respond_to(:email) }
 it { is_expected.to validate_presence_of(:email) }
 it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
 it { is_expected.to validate_confirmation_of(:password) }
 

end
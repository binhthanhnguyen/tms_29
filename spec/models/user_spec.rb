require "rails_helper"

RSpec.describe User, type: :model do
  context "is invalid without a email" do
    user = FactoryGirl.build :user, email: nil
    user.valid?
    it {expect(user.errors[:email]).to include "can't be blank"}
  end

  context "is invalid without a password" do
    user = FactoryGirl.build :user, password: nil
    user.valid?
    it {expect(user.errors[:password]).to include "can't be blank"}
  end

  context "has none to begin with" do
    it {expect(User.count).to eq 0}
  end

  context "has one after adding one" do
    FactoryGirl.create :user
    it {expect(User.count).to eq 1}
  end

  context "has one after one was created in a previous example" do
    it {expect(User.count).to eq 0}
  end
end

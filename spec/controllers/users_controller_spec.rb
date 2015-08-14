require "rails_helper"

RSpec.describe UsersController, type: :controller do
  let!(:user) {FactoryGirl.create :user}

  before {sign_in user}

  describe "GET show" do
    before {get :show, id: user}
    it {expect(assigns :user).to eq user}
    it {expect(response).to render_template :show}
  end

  describe "PUT update" do
    context "invalid attributes" do
      before {put :update, id: user, user: FactoryGirl.attributes_for(:invalid_email_user)}
      it {expect(assigns :user).to eq user}
      it {expect(response).to render_template :edit}
    end

    context "valid attributes" do
      before {put :update, id: user, user: FactoryGirl.attributes_for(:user)}
      it {expect(assigns :user).to eq user}
      it {expect(response).to redirect_to user_path user}
    end
  end
end

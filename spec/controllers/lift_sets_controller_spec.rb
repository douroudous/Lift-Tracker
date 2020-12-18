require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.
#
# Also compared to earlier versions of this generator, there are no longer any
# expectations of assigns and templates rendered. These features have been
# removed from Rails core in Rails 5, but can be added back in via the
# `rails-controller-testing` gem.

RSpec.describe LiftSetsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # LiftSet. As you add validations to LiftSet, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # LiftSetsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      LiftSet.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      lift_set = LiftSet.create! valid_attributes
      get :show, params: {id: lift_set.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      lift_set = LiftSet.create! valid_attributes
      get :edit, params: {id: lift_set.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new LiftSet" do
        expect {
          post :create, params: {lift_set: valid_attributes}, session: valid_session
        }.to change(LiftSet, :count).by(1)
      end

      it "redirects to the created lift_set" do
        post :create, params: {lift_set: valid_attributes}, session: valid_session
        expect(response).to redirect_to(LiftSet.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {lift_set: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested lift_set" do
        lift_set = LiftSet.create! valid_attributes
        put :update, params: {id: lift_set.to_param, lift_set: new_attributes}, session: valid_session
        lift_set.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the lift_set" do
        lift_set = LiftSet.create! valid_attributes
        put :update, params: {id: lift_set.to_param, lift_set: valid_attributes}, session: valid_session
        expect(response).to redirect_to(lift_set)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        lift_set = LiftSet.create! valid_attributes
        put :update, params: {id: lift_set.to_param, lift_set: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested lift_set" do
      lift_set = LiftSet.create! valid_attributes
      expect {
        delete :destroy, params: {id: lift_set.to_param}, session: valid_session
      }.to change(LiftSet, :count).by(-1)
    end

    it "redirects to the lift_sets list" do
      lift_set = LiftSet.create! valid_attributes
      delete :destroy, params: {id: lift_set.to_param}, session: valid_session
      expect(response).to redirect_to(lift_sets_url)
    end
  end

end

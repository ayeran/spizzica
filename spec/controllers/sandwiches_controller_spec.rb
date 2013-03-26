require 'spec_helper'

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

describe SandwichesController do

  # This should return the minimal set of attributes required to create a valid
  # Sandwich. As you add validations to Sandwich, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "name" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SandwichesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all sandwiches as @sandwiches" do
      sandwich = Sandwich.create! valid_attributes
      get :index, {}, valid_session
      assigns(:sandwiches).should eq([sandwich])
    end
  end

  describe "GET show" do
    it "assigns the requested sandwich as @sandwich" do
      sandwich = Sandwich.create! valid_attributes
      get :show, {:id => sandwich.to_param}, valid_session
      assigns(:sandwich).should eq(sandwich)
    end
  end

  describe "GET new" do
    it "assigns a new sandwich as @sandwich" do
      get :new, {}, valid_session
      assigns(:sandwich).should be_a_new(Sandwich)
    end
  end

  describe "GET edit" do
    it "assigns the requested sandwich as @sandwich" do
      sandwich = Sandwich.create! valid_attributes
      get :edit, {:id => sandwich.to_param}, valid_session
      assigns(:sandwich).should eq(sandwich)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Sandwich" do
        expect {
          post :create, {:sandwich => valid_attributes}, valid_session
        }.to change(Sandwich, :count).by(1)
      end

      it "assigns a newly created sandwich as @sandwich" do
        post :create, {:sandwich => valid_attributes}, valid_session
        assigns(:sandwich).should be_a(Sandwich)
        assigns(:sandwich).should be_persisted
      end

      it "redirects to the created sandwich" do
        post :create, {:sandwich => valid_attributes}, valid_session
        response.should redirect_to(Sandwich.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved sandwich as @sandwich" do
        # Trigger the behavior that occurs when invalid params are submitted
        Sandwich.any_instance.stub(:save).and_return(false)
        post :create, {:sandwich => { "name" => "invalid value" }}, valid_session
        assigns(:sandwich).should be_a_new(Sandwich)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Sandwich.any_instance.stub(:save).and_return(false)
        post :create, {:sandwich => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested sandwich" do
        sandwich = Sandwich.create! valid_attributes
        # Assuming there are no other sandwiches in the database, this
        # specifies that the Sandwich created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Sandwich.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => sandwich.to_param, :sandwich => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested sandwich as @sandwich" do
        sandwich = Sandwich.create! valid_attributes
        put :update, {:id => sandwich.to_param, :sandwich => valid_attributes}, valid_session
        assigns(:sandwich).should eq(sandwich)
      end

      it "redirects to the sandwich" do
        sandwich = Sandwich.create! valid_attributes
        put :update, {:id => sandwich.to_param, :sandwich => valid_attributes}, valid_session
        response.should redirect_to(sandwich)
      end
    end

    describe "with invalid params" do
      it "assigns the sandwich as @sandwich" do
        sandwich = Sandwich.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Sandwich.any_instance.stub(:save).and_return(false)
        put :update, {:id => sandwich.to_param, :sandwich => { "name" => "invalid value" }}, valid_session
        assigns(:sandwich).should eq(sandwich)
      end

      it "re-renders the 'edit' template" do
        sandwich = Sandwich.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Sandwich.any_instance.stub(:save).and_return(false)
        put :update, {:id => sandwich.to_param, :sandwich => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested sandwich" do
      sandwich = Sandwich.create! valid_attributes
      expect {
        delete :destroy, {:id => sandwich.to_param}, valid_session
      }.to change(Sandwich, :count).by(-1)
    end

    it "redirects to the sandwiches list" do
      sandwich = Sandwich.create! valid_attributes
      delete :destroy, {:id => sandwich.to_param}, valid_session
      response.should redirect_to(sandwiches_url)
    end
  end

end

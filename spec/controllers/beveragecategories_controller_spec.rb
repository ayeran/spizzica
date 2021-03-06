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

describe BeveragecategoriesController do

  # This should return the minimal set of attributes required to create a valid
  # Beveragecategory. As you add validations to Beveragecategory, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BeveragecategoriesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all beveragecategories as @beveragecategories" do
      beveragecategory = Beveragecategory.create! valid_attributes
      get :index, {}, valid_session
      assigns(:beveragecategories).should eq([beveragecategory])
    end
  end

  describe "GET show" do
    it "assigns the requested beveragecategory as @beveragecategory" do
      beveragecategory = Beveragecategory.create! valid_attributes
      get :show, {:id => beveragecategory.to_param}, valid_session
      assigns(:beveragecategory).should eq(beveragecategory)
    end
  end

  describe "GET new" do
    it "assigns a new beveragecategory as @beveragecategory" do
      get :new, {}, valid_session
      assigns(:beveragecategory).should be_a_new(Beveragecategory)
    end
  end

  describe "GET edit" do
    it "assigns the requested beveragecategory as @beveragecategory" do
      beveragecategory = Beveragecategory.create! valid_attributes
      get :edit, {:id => beveragecategory.to_param}, valid_session
      assigns(:beveragecategory).should eq(beveragecategory)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Beveragecategory" do
        expect {
          post :create, {:beveragecategory => valid_attributes}, valid_session
        }.to change(Beveragecategory, :count).by(1)
      end

      it "assigns a newly created beveragecategory as @beveragecategory" do
        post :create, {:beveragecategory => valid_attributes}, valid_session
        assigns(:beveragecategory).should be_a(Beveragecategory)
        assigns(:beveragecategory).should be_persisted
      end

      it "redirects to the created beveragecategory" do
        post :create, {:beveragecategory => valid_attributes}, valid_session
        response.should redirect_to(Beveragecategory.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved beveragecategory as @beveragecategory" do
        # Trigger the behavior that occurs when invalid params are submitted
        Beveragecategory.any_instance.stub(:save).and_return(false)
        post :create, {:beveragecategory => { "name" => "invalid value" }}, valid_session
        assigns(:beveragecategory).should be_a_new(Beveragecategory)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Beveragecategory.any_instance.stub(:save).and_return(false)
        post :create, {:beveragecategory => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested beveragecategory" do
        beveragecategory = Beveragecategory.create! valid_attributes
        # Assuming there are no other beveragecategories in the database, this
        # specifies that the Beveragecategory created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Beveragecategory.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => beveragecategory.to_param, :beveragecategory => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested beveragecategory as @beveragecategory" do
        beveragecategory = Beveragecategory.create! valid_attributes
        put :update, {:id => beveragecategory.to_param, :beveragecategory => valid_attributes}, valid_session
        assigns(:beveragecategory).should eq(beveragecategory)
      end

      it "redirects to the beveragecategory" do
        beveragecategory = Beveragecategory.create! valid_attributes
        put :update, {:id => beveragecategory.to_param, :beveragecategory => valid_attributes}, valid_session
        response.should redirect_to(beveragecategory)
      end
    end

    describe "with invalid params" do
      it "assigns the beveragecategory as @beveragecategory" do
        beveragecategory = Beveragecategory.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Beveragecategory.any_instance.stub(:save).and_return(false)
        put :update, {:id => beveragecategory.to_param, :beveragecategory => { "name" => "invalid value" }}, valid_session
        assigns(:beveragecategory).should eq(beveragecategory)
      end

      it "re-renders the 'edit' template" do
        beveragecategory = Beveragecategory.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Beveragecategory.any_instance.stub(:save).and_return(false)
        put :update, {:id => beveragecategory.to_param, :beveragecategory => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested beveragecategory" do
      beveragecategory = Beveragecategory.create! valid_attributes
      expect {
        delete :destroy, {:id => beveragecategory.to_param}, valid_session
      }.to change(Beveragecategory, :count).by(-1)
    end

    it "redirects to the beveragecategories list" do
      beveragecategory = Beveragecategory.create! valid_attributes
      delete :destroy, {:id => beveragecategory.to_param}, valid_session
      response.should redirect_to(beveragecategories_url)
    end
  end

end

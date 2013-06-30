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

describe SlideshowsController do

  # This should return the minimal set of attributes required to create a valid
  # Slideshow. As you add validations to Slideshow, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SlideshowsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all slideshows as @slideshows" do
      slideshow = Slideshow.create! valid_attributes
      get :index, {}, valid_session
      assigns(:slideshows).should eq([slideshow])
    end
  end

  describe "GET show" do
    it "assigns the requested slideshow as @slideshow" do
      slideshow = Slideshow.create! valid_attributes
      get :show, {:id => slideshow.to_param}, valid_session
      assigns(:slideshow).should eq(slideshow)
    end
  end

  describe "GET new" do
    it "assigns a new slideshow as @slideshow" do
      get :new, {}, valid_session
      assigns(:slideshow).should be_a_new(Slideshow)
    end
  end

  describe "GET edit" do
    it "assigns the requested slideshow as @slideshow" do
      slideshow = Slideshow.create! valid_attributes
      get :edit, {:id => slideshow.to_param}, valid_session
      assigns(:slideshow).should eq(slideshow)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Slideshow" do
        expect {
          post :create, {:slideshow => valid_attributes}, valid_session
        }.to change(Slideshow, :count).by(1)
      end

      it "assigns a newly created slideshow as @slideshow" do
        post :create, {:slideshow => valid_attributes}, valid_session
        assigns(:slideshow).should be_a(Slideshow)
        assigns(:slideshow).should be_persisted
      end

      it "redirects to the created slideshow" do
        post :create, {:slideshow => valid_attributes}, valid_session
        response.should redirect_to(Slideshow.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved slideshow as @slideshow" do
        # Trigger the behavior that occurs when invalid params are submitted
        Slideshow.any_instance.stub(:save).and_return(false)
        post :create, {:slideshow => { "name" => "invalid value" }}, valid_session
        assigns(:slideshow).should be_a_new(Slideshow)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Slideshow.any_instance.stub(:save).and_return(false)
        post :create, {:slideshow => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested slideshow" do
        slideshow = Slideshow.create! valid_attributes
        # Assuming there are no other slideshows in the database, this
        # specifies that the Slideshow created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Slideshow.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => slideshow.to_param, :slideshow => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested slideshow as @slideshow" do
        slideshow = Slideshow.create! valid_attributes
        put :update, {:id => slideshow.to_param, :slideshow => valid_attributes}, valid_session
        assigns(:slideshow).should eq(slideshow)
      end

      it "redirects to the slideshow" do
        slideshow = Slideshow.create! valid_attributes
        put :update, {:id => slideshow.to_param, :slideshow => valid_attributes}, valid_session
        response.should redirect_to(slideshow)
      end
    end

    describe "with invalid params" do
      it "assigns the slideshow as @slideshow" do
        slideshow = Slideshow.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Slideshow.any_instance.stub(:save).and_return(false)
        put :update, {:id => slideshow.to_param, :slideshow => { "name" => "invalid value" }}, valid_session
        assigns(:slideshow).should eq(slideshow)
      end

      it "re-renders the 'edit' template" do
        slideshow = Slideshow.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Slideshow.any_instance.stub(:save).and_return(false)
        put :update, {:id => slideshow.to_param, :slideshow => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested slideshow" do
      slideshow = Slideshow.create! valid_attributes
      expect {
        delete :destroy, {:id => slideshow.to_param}, valid_session
      }.to change(Slideshow, :count).by(-1)
    end

    it "redirects to the slideshows list" do
      slideshow = Slideshow.create! valid_attributes
      delete :destroy, {:id => slideshow.to_param}, valid_session
      response.should redirect_to(slideshows_url)
    end
  end

end
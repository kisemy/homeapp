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

RSpec.describe GlentriesController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Glentry. As you add validations to Glentry, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # GlentriesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all glentries as @glentries" do
      glentry = Glentry.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:glentries)).to eq([glentry])
    end
  end

  describe "GET show" do
    it "assigns the requested glentry as @glentry" do
      glentry = Glentry.create! valid_attributes
      get :show, {:id => glentry.to_param}, valid_session
      expect(assigns(:glentry)).to eq(glentry)
    end
  end

  describe "GET new" do
    it "assigns a new glentry as @glentry" do
      get :new, {}, valid_session
      expect(assigns(:glentry)).to be_a_new(Glentry)
    end
  end

  describe "GET edit" do
    it "assigns the requested glentry as @glentry" do
      glentry = Glentry.create! valid_attributes
      get :edit, {:id => glentry.to_param}, valid_session
      expect(assigns(:glentry)).to eq(glentry)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Glentry" do
        expect {
          post :create, {:glentry => valid_attributes}, valid_session
        }.to change(Glentry, :count).by(1)
      end

      it "assigns a newly created glentry as @glentry" do
        post :create, {:glentry => valid_attributes}, valid_session
        expect(assigns(:glentry)).to be_a(Glentry)
        expect(assigns(:glentry)).to be_persisted
      end

      it "redirects to the created glentry" do
        post :create, {:glentry => valid_attributes}, valid_session
        expect(response).to redirect_to(Glentry.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved glentry as @glentry" do
        post :create, {:glentry => invalid_attributes}, valid_session
        expect(assigns(:glentry)).to be_a_new(Glentry)
      end

      it "re-renders the 'new' template" do
        post :create, {:glentry => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested glentry" do
        glentry = Glentry.create! valid_attributes
        put :update, {:id => glentry.to_param, :glentry => new_attributes}, valid_session
        glentry.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested glentry as @glentry" do
        glentry = Glentry.create! valid_attributes
        put :update, {:id => glentry.to_param, :glentry => valid_attributes}, valid_session
        expect(assigns(:glentry)).to eq(glentry)
      end

      it "redirects to the glentry" do
        glentry = Glentry.create! valid_attributes
        put :update, {:id => glentry.to_param, :glentry => valid_attributes}, valid_session
        expect(response).to redirect_to(glentry)
      end
    end

    describe "with invalid params" do
      it "assigns the glentry as @glentry" do
        glentry = Glentry.create! valid_attributes
        put :update, {:id => glentry.to_param, :glentry => invalid_attributes}, valid_session
        expect(assigns(:glentry)).to eq(glentry)
      end

      it "re-renders the 'edit' template" do
        glentry = Glentry.create! valid_attributes
        put :update, {:id => glentry.to_param, :glentry => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested glentry" do
      glentry = Glentry.create! valid_attributes
      expect {
        delete :destroy, {:id => glentry.to_param}, valid_session
      }.to change(Glentry, :count).by(-1)
    end

    it "redirects to the glentries list" do
      glentry = Glentry.create! valid_attributes
      delete :destroy, {:id => glentry.to_param}, valid_session
      expect(response).to redirect_to(glentries_url)
    end
  end

end

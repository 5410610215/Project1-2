require 'spec_helper'
describe UnsolvedsController do
  def mock_unsolved(stubs={})
    @mock_unsolved ||= mock_model(Unsolved, stubs).as_null_object
  end

  describe "#create" do
    before(:each) do
        @attr = { :department => "HR", :details => "LAN cable is broken", :priority => "1", :status => "1", :topic => "LAN" }
    end
    it "should create a new post" do
        lambda do
          post :create, :unsolved => @attr
          flash[:notice].should_not be_nil
        end.should change(Unsolved, :count).by(1)
    end
    it "should redirect to the post show page and show success message" do
      post :create, :unsolved => @attr
      flash[:notice].should =~ /unsolved problem was successfully added/i
      response.should redirect_to unsolved_path(assigns(:unsolved))
    end
  end

  describe "GET index" do
    it "assigns all posts as @unsolveds" do
      Unsolved.stub(:all) { [mock_unsolved] }
      get :index
      assigns(:unsolveds).should eq([mock_unsolved])
    end
  end

  describe "GET show" do
    it "assigns the requested post as @unsolved" do
      Unsolved.stub(:find).with("37") { mock_unsolved }
      get :show, :id => "37"
      assigns(:unsolved).should be(mock_unsolved)
    end
  end

  describe "GET new" do
    it "assigns a new post as @unsolved" do
      Unsolved.stub(:new) { mock_unsolved }
      get :new
      assigns(:unsolved).should be(mock_unsolved)
    end
  end

end

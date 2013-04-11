require 'spec_helper'

describe WelcomeController, type: :controller do
  describe "get index" do
    before do
      get :index
    end
    it { should render_template(:index) }
  end

end
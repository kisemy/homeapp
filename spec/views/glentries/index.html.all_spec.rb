require 'rails_helper'

RSpec.describe "glentries/index", :type => :view do
  before(:each) do
    assign(:glentries, [
      Glentry.create!(
        :description => "MyText",
        :amount => "9.99"
      ),
      Glentry.create!(
        :description => "MyText",
        :amount => "9.99"
      )
    ])
  end

  it "renders a list of glentries" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end

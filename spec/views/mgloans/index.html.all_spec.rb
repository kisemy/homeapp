require 'rails_helper'

RSpec.describe "mgloans/index", :type => :view do
  before(:each) do
    assign(:mgloans, [
      Mgloan.create!(
        :Firstname => "MyText",
        :Middlename => "MyText",
        :Lastname => "MyText",
        :IDno => "MyText",
        :Pinno => "MyText",
        :Designation => "MyText",
        :Jobgroup => "MyText",
        :ministry => "MyText",
        :department => "MyText",
        :station => "MyText",
        :Address => "MyText",
        :Telephone => "MyText",
        :Mobile => "MyText",
        :E-mail => "MyText",
        :Maritalstatus => "MyText",
        :Amount => "9.99"
      ),
      Mgloan.create!(
        :Firstname => "MyText",
        :Middlename => "MyText",
        :Lastname => "MyText",
        :IDno => "MyText",
        :Pinno => "MyText",
        :Designation => "MyText",
        :Jobgroup => "MyText",
        :ministry => "MyText",
        :department => "MyText",
        :station => "MyText",
        :Address => "MyText",
        :Telephone => "MyText",
        :Mobile => "MyText",
        :E-mail => "MyText",
        :Maritalstatus => "MyText",
        :Amount => "9.99"
      )
    ])
  end

  it "renders a list of mgloans" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end

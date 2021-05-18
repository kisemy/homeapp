require 'rails_helper'

RSpec.describe "loans/index", :type => :view do
  before(:each) do
    assign(:loans, [
      Loan.create!(
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
        :Amount => "Amount"
      ),
      Loan.create!(
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
        :Amount => "Amount"
      )
    ])
  end

  it "renders a list of loans" do
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
    assert_select "tr>td", :text => "Amount".to_s, :count => 2
  end
end

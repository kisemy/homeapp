require 'rails_helper'

RSpec.describe "morgages/new", :type => :view do
  before(:each) do
    assign(:morgage, Morgage.new(
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
      :Email => "MyText",
      :Maritalstatus => "MyText",
      :Amount => "9.99"
    ))
  end

  it "renders new morgage form" do
    render

    assert_select "form[action=?][method=?]", morgages_path, "post" do

      assert_select "textarea#morgage_Firstname[name=?]", "morgage[Firstname]"

      assert_select "textarea#morgage_Middlename[name=?]", "morgage[Middlename]"

      assert_select "textarea#morgage_Lastname[name=?]", "morgage[Lastname]"

      assert_select "textarea#morgage_IDno[name=?]", "morgage[IDno]"

      assert_select "textarea#morgage_Pinno[name=?]", "morgage[Pinno]"

      assert_select "textarea#morgage_Designation[name=?]", "morgage[Designation]"

      assert_select "textarea#morgage_Jobgroup[name=?]", "morgage[Jobgroup]"

      assert_select "textarea#morgage_ministry[name=?]", "morgage[ministry]"

      assert_select "textarea#morgage_department[name=?]", "morgage[department]"

      assert_select "textarea#morgage_station[name=?]", "morgage[station]"

      assert_select "textarea#morgage_Address[name=?]", "morgage[Address]"

      assert_select "textarea#morgage_Telephone[name=?]", "morgage[Telephone]"

      assert_select "textarea#morgage_Mobile[name=?]", "morgage[Mobile]"

      assert_select "textarea#morgage_Email[name=?]", "morgage[Email]"

      assert_select "textarea#morgage_Maritalstatus[name=?]", "morgage[Maritalstatus]"

      assert_select "input#morgage_Amount[name=?]", "morgage[Amount]"
    end
  end
end

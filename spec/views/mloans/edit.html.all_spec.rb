require 'rails_helper'

RSpec.describe "mloans/edit", :type => :view do
  before(:each) do
    @mloan = assign(:mloan, Mloan.create!(
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
    ))
  end

  it "renders the edit mloan form" do
    render

    assert_select "form[action=?][method=?]", mloan_path(@mloan), "post" do

      assert_select "textarea#mloan_Firstname[name=?]", "mloan[Firstname]"

      assert_select "textarea#mloan_Middlename[name=?]", "mloan[Middlename]"

      assert_select "textarea#mloan_Lastname[name=?]", "mloan[Lastname]"

      assert_select "textarea#mloan_IDno[name=?]", "mloan[IDno]"

      assert_select "textarea#mloan_Pinno[name=?]", "mloan[Pinno]"

      assert_select "textarea#mloan_Designation[name=?]", "mloan[Designation]"

      assert_select "textarea#mloan_Jobgroup[name=?]", "mloan[Jobgroup]"

      assert_select "textarea#mloan_ministry[name=?]", "mloan[ministry]"

      assert_select "textarea#mloan_department[name=?]", "mloan[department]"

      assert_select "textarea#mloan_station[name=?]", "mloan[station]"

      assert_select "textarea#mloan_Address[name=?]", "mloan[Address]"

      assert_select "textarea#mloan_Telephone[name=?]", "mloan[Telephone]"

      assert_select "textarea#mloan_Mobile[name=?]", "mloan[Mobile]"

      assert_select "textarea#mloan_E-mail[name=?]", "mloan[E-mail]"

      assert_select "textarea#mloan_Maritalstatus[name=?]", "mloan[Maritalstatus]"

      assert_select "input#mloan_Amount[name=?]", "mloan[Amount]"
    end
  end
end

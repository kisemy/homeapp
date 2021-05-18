require 'rails_helper'

RSpec.describe "mgloans/edit", :type => :view do
  before(:each) do
    @mgloan = assign(:mgloan, Mgloan.create!(
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

  it "renders the edit mgloan form" do
    render

    assert_select "form[action=?][method=?]", mgloan_path(@mgloan), "post" do

      assert_select "textarea#mgloan_Firstname[name=?]", "mgloan[Firstname]"

      assert_select "textarea#mgloan_Middlename[name=?]", "mgloan[Middlename]"

      assert_select "textarea#mgloan_Lastname[name=?]", "mgloan[Lastname]"

      assert_select "textarea#mgloan_IDno[name=?]", "mgloan[IDno]"

      assert_select "textarea#mgloan_Pinno[name=?]", "mgloan[Pinno]"

      assert_select "textarea#mgloan_Designation[name=?]", "mgloan[Designation]"

      assert_select "textarea#mgloan_Jobgroup[name=?]", "mgloan[Jobgroup]"

      assert_select "textarea#mgloan_ministry[name=?]", "mgloan[ministry]"

      assert_select "textarea#mgloan_department[name=?]", "mgloan[department]"

      assert_select "textarea#mgloan_station[name=?]", "mgloan[station]"

      assert_select "textarea#mgloan_Address[name=?]", "mgloan[Address]"

      assert_select "textarea#mgloan_Telephone[name=?]", "mgloan[Telephone]"

      assert_select "textarea#mgloan_Mobile[name=?]", "mgloan[Mobile]"

      assert_select "textarea#mgloan_E-mail[name=?]", "mgloan[E-mail]"

      assert_select "textarea#mgloan_Maritalstatus[name=?]", "mgloan[Maritalstatus]"

      assert_select "input#mgloan_Amount[name=?]", "mgloan[Amount]"
    end
  end
end

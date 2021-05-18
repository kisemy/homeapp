require 'rails_helper'

RSpec.describe "loans/edit", :type => :view do
  before(:each) do
    @loan = assign(:loan, Loan.create!(
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
      :Amount => "MyString"
    ))
  end

  it "renders the edit loan form" do
    render

    assert_select "form[action=?][method=?]", loan_path(@loan), "post" do

      assert_select "textarea#loan_Firstname[name=?]", "loan[Firstname]"

      assert_select "textarea#loan_Middlename[name=?]", "loan[Middlename]"

      assert_select "textarea#loan_Lastname[name=?]", "loan[Lastname]"

      assert_select "textarea#loan_IDno[name=?]", "loan[IDno]"

      assert_select "textarea#loan_Pinno[name=?]", "loan[Pinno]"

      assert_select "textarea#loan_Designation[name=?]", "loan[Designation]"

      assert_select "textarea#loan_Jobgroup[name=?]", "loan[Jobgroup]"

      assert_select "textarea#loan_ministry[name=?]", "loan[ministry]"

      assert_select "textarea#loan_department[name=?]", "loan[department]"

      assert_select "textarea#loan_station[name=?]", "loan[station]"

      assert_select "textarea#loan_Address[name=?]", "loan[Address]"

      assert_select "textarea#loan_Telephone[name=?]", "loan[Telephone]"

      assert_select "textarea#loan_Mobile[name=?]", "loan[Mobile]"

      assert_select "textarea#loan_E-mail[name=?]", "loan[E-mail]"

      assert_select "textarea#loan_Maritalstatus[name=?]", "loan[Maritalstatus]"

      assert_select "input#loan_Amount[name=?]", "loan[Amount]"
    end
  end
end

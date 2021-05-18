require 'rails_helper'

RSpec.describe "loans/show", :type => :view do
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
      :Amount => "Amount"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Amount/)
  end
end

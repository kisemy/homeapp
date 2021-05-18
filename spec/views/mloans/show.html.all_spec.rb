require 'rails_helper'

RSpec.describe "mloans/show", :type => :view do
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
    expect(rendered).to match(/9.99/)
  end
end

require 'rails_helper'

RSpec.describe "glentries/show", :type => :view do
  before(:each) do
    @glentry = assign(:glentry, Glentry.create!(
      :description => "MyText",
      :amount => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
  end
end

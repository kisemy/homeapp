require 'rails_helper'

RSpec.describe "glentries/new", :type => :view do
  before(:each) do
    assign(:glentry, Glentry.new(
      :description => "MyText",
      :amount => "9.99"
    ))
  end

  it "renders new glentry form" do
    render

    assert_select "form[action=?][method=?]", glentries_path, "post" do

      assert_select "textarea#glentry_description[name=?]", "glentry[description]"

      assert_select "input#glentry_amount[name=?]", "glentry[amount]"
    end
  end
end

require 'rails_helper'

RSpec.describe "glentries/edit", :type => :view do
  before(:each) do
    @glentry = assign(:glentry, Glentry.create!(
      :description => "MyText",
      :amount => "9.99"
    ))
  end

  it "renders the edit glentry form" do
    render

    assert_select "form[action=?][method=?]", glentry_path(@glentry), "post" do

      assert_select "textarea#glentry_description[name=?]", "glentry[description]"

      assert_select "input#glentry_amount[name=?]", "glentry[amount]"
    end
  end
end

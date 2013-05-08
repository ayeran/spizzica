require 'spec_helper'

describe "bruschetta/index" do
  before(:each) do
    assign(:bruschetta, [
      stub_model(Bruschettum,
        :name => "Name",
        :price => "9.99"
      ),
      stub_model(Bruschettum,
        :name => "Name",
        :price => "9.99"
      )
    ])
  end

  it "renders a list of bruschetta" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end

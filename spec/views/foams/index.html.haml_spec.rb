require 'spec_helper'

describe "foams/index" do
  before(:each) do
    assign(:foams, [
      stub_model(Foam,
        :name => "Name"
      ),
      stub_model(Foam,
        :name => "Name"
      )
    ])
  end

  it "renders a list of foams" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end

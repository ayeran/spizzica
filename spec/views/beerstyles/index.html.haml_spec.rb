require 'spec_helper'

describe "beerstyles/index" do
  before(:each) do
    assign(:beerstyles, [
      stub_model(Beerstyle,
        :name => "Name"
      ),
      stub_model(Beerstyle,
        :name => "Name"
      )
    ])
  end

  it "renders a list of beerstyles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end

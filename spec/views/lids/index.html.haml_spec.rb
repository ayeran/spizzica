require 'spec_helper'

describe "lids/index" do
  before(:each) do
    assign(:lids, [
      stub_model(Lid,
        :name => "Name"
      ),
      stub_model(Lid,
        :name => "Name"
      )
    ])
  end

  it "renders a list of lids" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end

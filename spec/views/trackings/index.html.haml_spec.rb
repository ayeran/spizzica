require 'spec_helper'

describe "trackings/index" do
  before(:each) do
    assign(:trackings, [
      stub_model(Tracking,
        :order => nil,
        :status => nil,
        :info => "MyText"
      ),
      stub_model(Tracking,
        :order => nil,
        :status => nil,
        :info => "MyText"
      )
    ])
  end

  it "renders a list of trackings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

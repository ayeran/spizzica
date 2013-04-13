require 'spec_helper'

describe "trackings/show" do
  before(:each) do
    @tracking = assign(:tracking, stub_model(Tracking,
      :order => nil,
      :status => nil,
      :info => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/MyText/)
  end
end

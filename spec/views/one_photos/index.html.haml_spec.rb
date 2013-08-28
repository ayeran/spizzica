require 'spec_helper'

describe "one_photos/index" do
  before(:each) do
    assign(:one_photos, [
      stub_model(OnePhoto),
      stub_model(OnePhoto)
    ])
  end

  it "renders a list of one_photos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end

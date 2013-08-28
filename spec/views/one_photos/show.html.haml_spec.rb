require 'spec_helper'

describe "one_photos/show" do
  before(:each) do
    @one_photo = assign(:one_photo, stub_model(OnePhoto))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end

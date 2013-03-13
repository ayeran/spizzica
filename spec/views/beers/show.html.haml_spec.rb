require 'spec_helper'

describe "beers/show" do
  before(:each) do
    @beer = assign(:beer, stub_model(Beer,
      :name => "Name",
      :manufacturer_id => 1,
      :strength => "9.99",
      :container_id => 2,
      :lid_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/9.99/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end

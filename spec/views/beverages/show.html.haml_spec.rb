require 'spec_helper'

describe "beverages/show" do
  before(:each) do
    @beverage = assign(:beverage, stub_model(Beverage,
      :name => "Name",
      :strength => "9.99",
      :volume => "9.99",
      :container_id => 1,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
  end
end

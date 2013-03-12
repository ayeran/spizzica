require 'spec_helper'

describe "beers/show" do
  before(:each) do
    @beer = assign(:beer, stub_model(Beer,
      :name => "Name",
      :aroma => "Aroma",
      :flavor => 1,
      :foam => "Foam",
      :color => "Color",
      :strength => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Aroma/)
    rendered.should match(/1/)
    rendered.should match(/Foam/)
    rendered.should match(/Color/)
    rendered.should match(/9.99/)
  end
end

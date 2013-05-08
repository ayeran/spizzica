require 'spec_helper'

describe "bruschetta/show" do
  before(:each) do
    @bruschettum = assign(:bruschettum, stub_model(Bruschettum,
      :name => "Name",
      :price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/9.99/)
  end
end

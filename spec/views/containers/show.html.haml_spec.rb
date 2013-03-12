require 'spec_helper'

describe "containers/show" do
  before(:each) do
    @container = assign(:container, stub_model(Container,
      :name => "Name",
      :added_by => 1,
      :updated_by => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end

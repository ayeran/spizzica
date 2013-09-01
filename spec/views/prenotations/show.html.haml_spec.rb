require 'spec_helper'

describe "prenotations/show" do
  before(:each) do
    @prenotation = assign(:prenotation, stub_model(Prenotation,
      :name => "Name",
      :email => "Email",
      :phone => "Phone",
      :comment => "MyText",
      :quantity => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/Phone/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
  end
end

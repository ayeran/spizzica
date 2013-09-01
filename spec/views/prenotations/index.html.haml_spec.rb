require 'spec_helper'

describe "prenotations/index" do
  before(:each) do
    assign(:prenotations, [
      stub_model(Prenotation,
        :name => "Name",
        :email => "Email",
        :phone => "Phone",
        :comment => "MyText",
        :quantity => 1
      ),
      stub_model(Prenotation,
        :name => "Name",
        :email => "Email",
        :phone => "Phone",
        :comment => "MyText",
        :quantity => 1
      )
    ])
  end

  it "renders a list of prenotations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end

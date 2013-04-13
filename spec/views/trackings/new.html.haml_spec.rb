require 'spec_helper'

describe "trackings/new" do
  before(:each) do
    assign(:tracking, stub_model(Tracking,
      :order => nil,
      :status => nil,
      :info => "MyText"
    ).as_new_record)
  end

  it "renders new tracking form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", trackings_path, "post" do
      assert_select "input#tracking_order[name=?]", "tracking[order]"
      assert_select "input#tracking_status[name=?]", "tracking[status]"
      assert_select "textarea#tracking_info[name=?]", "tracking[info]"
    end
  end
end

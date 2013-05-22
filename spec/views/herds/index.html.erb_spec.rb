require 'spec_helper'

describe "herds/index" do
  before(:each) do
    assign(:herds, [
      stub_model(Herd,
        :name => "Name",
        :size => 1
      ),
      stub_model(Herd,
        :name => "Name",
        :size => 1
      )
    ])
  end

  it "renders a list of herds" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
